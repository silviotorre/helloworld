# Singleton pattern implementation using a script-scoped variable.
# This checks if the HelloWorld module has already been loaded into the current session.
# If it has, it throws an error and stops execution. 
# This is to ensure we don't import and define the same function multiple times.
if($script:HelloWorldModuleLoaded -eq $true) {
    Write-Error "HelloWorld module is already loaded."
    return
}
$script:HelloWorldModuleLoaded = $true

# Dot sourcing the WriteHelloWorld.ps1 script to import the function defined in it.
# Dot sourcing is a method of invocation of a script that runs in the current scope 
# rather than its own scope, which is the case when you run the script normally.
. .\WriteHelloWorld.ps1

# Export the Write-HelloWorld function from the module.
# This allows the function to be used outside the module.
Export-ModuleMember -Function Write-HelloWorld
