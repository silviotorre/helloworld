$ErrorActionPreference = "Stop"

if (Get-Variable -Name PSNativeCommandUseErrorActionPreference -ErrorAction SilentlyContinue) {
    $PSNativeCommandUseErrorActionPreference = $false
}

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

$failures = [System.Collections.Generic.List[string]]::new()
$warnings = [System.Collections.Generic.List[string]]::new()

function Add-Failure {
    param([string]$Message)
    $failures.Add($Message) | Out-Null
    Write-Host "FAIL: $Message" -ForegroundColor Red
}

function Add-Warning {
    param([string]$Message)
    $warnings.Add($Message) | Out-Null
    Write-Host "SKIP: $Message" -ForegroundColor Yellow
}

function Add-Success {
    param([string]$Message)
    Write-Host "OK: $Message" -ForegroundColor Green
}

function Test-RequiredPaths {
    $required = @(
        "README.md",
        "CONTRIBUTING.md",
        "templates/LANGUAGE_README_TEMPLATE.md",
        "cmd/README.md",
        "go/README.md",
        "java/README.md",
        "javascript/README.md",
        "json/README.md",
        "kusto/README.md",
        "perl/README.md",
        "powershell/README.md",
        "python/README.md",
        "sql/README.md",
        "vb.net/README.md",
        "yaml/README.md"
    )

    foreach ($path in $required) {
        if (Test-Path -LiteralPath $path) {
            Add-Success "Found $path"
        }
        else {
            Add-Failure "Missing required path: $path"
        }
    }
}

function Test-ReadmeLinks {
    $readmes = Get-ChildItem -Recurse -Filter README.md | Select-Object -ExpandProperty FullName
    $pattern = '\[[^\]]+\]\((?!https?:\/\/|mailto:|#)([^)]+)\)'

    foreach ($readme in $readmes) {
        $content = Get-Content -LiteralPath $readme -Raw
        $matches = [regex]::Matches($content, $pattern)
        foreach ($match in $matches) {
            $target = $match.Groups[1].Value
            if ([string]::IsNullOrWhiteSpace($target)) {
                continue
            }

            $normalized = $target.Replace("/", [System.IO.Path]::DirectorySeparatorChar)
            $candidate = Join-Path (Split-Path -Parent $readme) $normalized
            if (-not (Test-Path -LiteralPath $candidate)) {
                Add-Failure "Broken local link '$target' in $readme"
            }
        }
    }
}

function Test-JavaScriptHtmlReferences {
    $htmlFiles = Get-ChildItem -Path "javascript" -Filter "*.html"
    foreach ($htmlFile in $htmlFiles) {
        $content = Get-Content -LiteralPath $htmlFile.FullName -Raw
        $matches = [regex]::Matches($content, '<script\s+src="([^"]+)"')
        foreach ($match in $matches) {
            $scriptPath = Join-Path $htmlFile.DirectoryName $match.Groups[1].Value
            if (Test-Path -LiteralPath $scriptPath) {
                Add-Success "HTML reference valid: $($htmlFile.Name) -> $($match.Groups[1].Value)"
            }
            else {
                Add-Failure "Missing script reference '$($match.Groups[1].Value)' in $($htmlFile.FullName)"
            }
        }
    }
}

function Test-JsonFiles {
    $jsonFiles = Get-ChildItem -Path "json" -Filter "*.json"
    foreach ($jsonFile in $jsonFiles) {
        try {
            Get-Content -LiteralPath $jsonFile.FullName -Raw | ConvertFrom-Json | Out-Null
            Add-Success "Valid JSON: $($jsonFile.Name)"
        }
        catch {
            Add-Failure "Invalid JSON in $($jsonFile.FullName): $($_.Exception.Message)"
        }
    }
}

function Test-YamlFiles {
    $yamlParser = Get-Command ConvertFrom-Yaml -ErrorAction SilentlyContinue
    if (-not $yamlParser) {
        Add-Warning "ConvertFrom-Yaml not available; YAML parsing skipped"
        return
    }

    $yamlFiles = Get-ChildItem -Path "yaml" -Filter "*.yaml"
    foreach ($yamlFile in $yamlFiles) {
        try {
            Get-Content -LiteralPath $yamlFile.FullName -Raw | ConvertFrom-Yaml | Out-Null
            Add-Success "Valid YAML: $($yamlFile.Name)"
        }
        catch {
            Add-Failure "Invalid YAML in $($yamlFile.FullName): $($_.Exception.Message)"
        }
    }
}

function Test-PythonSamples {
    $python = Get-Command python -ErrorAction SilentlyContinue
    if (-not $python) {
        Add-Warning "python not available; Python checks skipped"
        return
    }

    $stdoutFile = [System.IO.Path]::GetTempFileName()
    $stderrFile = [System.IO.Path]::GetTempFileName()

    try {
        $basicProcess = Start-Process -FilePath $python.Source -ArgumentList "python/helloworld.py" -NoNewWindow -Wait -PassThru -RedirectStandardOutput $stdoutFile -RedirectStandardError $stderrFile
        if ($basicProcess.ExitCode -eq 0) {
            Add-Success "Python basic example executed"
        }
        else {
            Add-Failure "Python basic example failed with exit code $($basicProcess.ExitCode)"
        }

        $testArgs = @("-m", "unittest", "discover", "-s", "python", "-p", "test*.py", "-v")
        $testProcess = Start-Process -FilePath $python.Source -ArgumentList $testArgs -NoNewWindow -Wait -PassThru -RedirectStandardOutput $stdoutFile -RedirectStandardError $stderrFile
        if ($testProcess.ExitCode -eq 0) {
            Add-Success "Python unittest discovery passed"
        }
        else {
            Add-Failure "Python unittest discovery failed with exit code $($testProcess.ExitCode)"
        }
    }
    finally {
        Remove-Item -LiteralPath $stdoutFile, $stderrFile -ErrorAction SilentlyContinue
    }
}

function Test-PowerShellSamples {
    try {
        $moduleResult = & powershell -NoProfile -ExecutionPolicy Bypass -Command "& { Set-Location '$repoRoot\\powershell'; .\\Main.ps1 }"
        if ($moduleResult -match "Hello, World!") {
            Add-Success "PowerShell module example executed"
        }
        else {
            Add-Failure "PowerShell module example did not emit the expected message"
        }
    }
    catch {
        Add-Failure "PowerShell module example failed: $($_.Exception.Message)"
    }
}

Test-RequiredPaths
Test-ReadmeLinks
Test-JavaScriptHtmlReferences
Test-JsonFiles
Test-YamlFiles
Test-PythonSamples
Test-PowerShellSamples

if ($warnings.Count -gt 0) {
    Write-Host ""
    Write-Host "Skipped checks: $($warnings.Count)" -ForegroundColor Yellow
}

if ($failures.Count -gt 0) {
    Write-Host ""
    Write-Host "Smoke check completed with $($failures.Count) failure(s)." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Smoke check completed successfully." -ForegroundColor Green
