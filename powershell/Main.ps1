# PowerShell adds directories to the PSModulePath environment variable that it uses to locate modules.
# So, we add our current directory (which contains our module) to the PSModulePath.

# Get-Location returns the current path. 
# .Path is used to get the string value of the path
$modulePath = (Get-Location).Path 

# Concatenate current module path with existing PSModulePath
$env:PSModulePath = $env:PSModulePath + ";" + $modulePath

# Import the HelloWorld module.
# Import-Module cmdlet adds one or more modules to the current session.
# The modules that you import must be installed on the local computer or a remote computer.
Import-Module HelloWorld 

# Call the Write-HelloWorld function exported by our module.
# This function outputs "Hello, World!" to the console.
Write-HelloWorld
