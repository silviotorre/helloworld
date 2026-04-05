# Resolve the module path relative to this script so the example works
# when launched from the repository root or directly from this directory.
$modulePath = Join-Path -Path $PSScriptRoot -ChildPath "HelloWorld.psm1"

# Import the HelloWorld module from the local file path.
Import-Module $modulePath -Force

# Call the Write-HelloWorld function exported by our module.
# This function outputs "Hello, World!" to the console.
Write-HelloWorld
