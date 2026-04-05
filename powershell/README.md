# Hello World in Multiple Languages Extravaganza: PowerShell

## Summary

This directory contains:

- `helloworld.ps1`: a basic PowerShell script that writes `Hello, World!`
- `HelloWorld.psm1`: a small module exporting `Write-HelloWorld`
- `Main.ps1`: a module-based example that imports the module and prints the message
- `WriteHelloWorld.ps1`: function definition dot-sourced by the module

## Run

From the repository root:

```powershell
powershell -ExecutionPolicy Bypass -File .\powershell\helloworld.ps1
powershell -ExecutionPolicy Bypass -Command "& { Set-Location .\powershell; .\Main.ps1 }"
```

The basic script pauses for input before closing. The module-based example is the one used by the root smoke check.

## Tasks

- [x] Basic PowerShell hello world
- [x] Module-based PowerShell hello world
- [ ] Add a different output variant
- [ ] Add external tests with Pester

## Notes

- This directory currently uses both script files and a module file because the advanced example demonstrates a simple reusable PowerShell module layout.
