# Hello World in Multiple Languages Extravaganza: Powershell
Hello world project extravaganza, the Powershell version.
## Synopsis
This repository contains a collection of "Hello World" powershell programs; from the simplest "Hello World" Powershell, in plain text, to a "Hello World" more complex. This is part of a fun and educational project that showcases how to print "Hello World" in different programming languages. The goal is to have a "Hello World" program in every programming language. This project is inspired by the [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/helloworld) project and you can found it in [Hello World Extravaganza website](https://silviotorre.github.io/helloworld/).
 
## check out the code
To get started, clone this repository to your local machine:
```bash
git clone https://github.com/silviotorre/helloworld.git
```
## Getting Started
To run the "Hello World" program navigate to the project directory and run the program. Follow the instructions below to run the "Hello World" .
Some info: PowerShell is born as a task automation and configuration management framework, designed by Jeffrey Snover and released in 2006, and now is also a cross-platform task automation and configuration management framework, consisting of a command-line shell and scripting language. Unlike most shells, which accept and return text, PowerShell is built on top of the .NET Common Language Runtime (CLR), and accepts and returns .NET objects. This fundamental change brings entirely new tools and methods for automation. PowerShell is open-source software released under the MIT license.
Note:
there are many frameworks and libraries that use Powershell, in this repo we work simply with Powershell.

**Enviroment** 
- If you want to learn more about Powershell you can visit the [Powershell](https://docs.microsoft.com/en-us/powershell/) website.
- You can check your Powershell version with the command `$PSVersionTable.PSVersion` in the Powershell console.
- if you need to download Powershell you can visit the [Powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.1) website.
- If you want to use winget to install Powershell you can visit the [Winget](https://docs.microsoft.com/en-us/windows/package-manager/winget/) website.
- If you want to use chocolatey to install Powershell you can visit the [Chocolatey](https://chocolatey.org/packages/powershell) website.
- If you want to use scoop to install Powershell you can visit the [Scoop](https://scoop.sh/) website.
- remember to check the Powershell execution policy with the command `Get-ExecutionPolicy` in the Powershell console.
- and check also environment variables with the command `Get-ChildItem Env:` in the Powershell console.

Ok, now you are ready to run the "Hello World" program.

- open a command prompt or terminal
- go in the Powershell directory of hello world project.
- you can run the project web page in windows you can run the [helloworld.ps1](helloworld.ps1) file with start command (see example below)
- you can run the project web page in linux you can run the [helloworld.ps1](helloworld.ps1) file with xdg-open command

alternatively you can:
- Open the [helloworld.ps1](helloworld.ps1) file with a double click.

## Example
```commandline

start helloworld.ps1

```
## An advanced version of Powershell "Hello World" program
To Do....
... then

- Open [helloworld2.ps1](helloworld2.ps1) file.
- Open the Powershell Console.
- You should see the output of the Powershell code in the console.
- Inspect the files for full details on the implementation.
- add something new, for example a new output, or a new feature or pattern implementation and try to run it.
- If extra task are flagged "Done" you can try to run the unit test file [helloworld2.tests.ps1](helloworld2.tests.ps1) with the command `Invoke-Pester` in the Powershell console.

## tasks
- [x]  basic "Hello World" Powershell and ps1 file
- [ ]  Advanced "Hello World" Powershell and ps1 file
- [ ]  Add a different "Hello World" output

# Extra Credit
- [ ]  Add external unit test file to the ps1 file
- [ ]  Add advanced features to this project

## Contributing
Feel free to contribute your own "Hello World" programs to this repository. Simply create a new directory with the name of the programming language and add a file named helloworld.<extension> with your implementation. Don't forget to update the README file to include your contribution!

## Contributors
- Silvio Torre (silviotorre)  - creator, maintainer

## License
- This project is licensed under the MIT License - see the [MIT](https://choosealicense.com/licenses/mit/) file for details

## References
- [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/helloworld)

## Home of this project
- [GitHub Hello World Extravaganza](https://github.com/silviotorre/helloworld/)

Enjoy and happy coding!