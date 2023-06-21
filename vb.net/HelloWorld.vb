Imports System 
' Import the System namespace. This namespace contains the Console class
' which provides access to the standard input, output and error streams
' of the console.

Module HelloWorld
' Declare a module called HelloWorld. Modules are used to organize code
    Sub Main()
        ' This is the entry point of the program
        ' It is where the program execution begins

        ' Print "Hello, World!" to the console
        Console.WriteLine("Hello, World!")

        ' Wait for user input before exiting
        Console.ReadLine()
    End Sub
End Module
' for start the program in vscode press F5 or Ctrl+F5
' for compile the program in vscode press Ctrl+Shift+B
' for compile the program in terminal press vbc HelloWorld.vb
' then you got HelloWorld.exe:
' for run the program in terminal start HelloWorld.exe by typing HelloWorld.exe or double click on it
' info about the compiler: https://docs.microsoft.com/en-us/dotnet/visual-basic/language-reference/compiler-options/command-line-building-with-vbc-exe?view=netframework-4.8
' info about vb.net: https://docs.microsoft.com/en-us/dotnet/visual-basic/programming-guide/language-features/  
' info about the .net framework: https://docs.microsoft.com/en-us/dotnet/framework/get-started/overview
' enjoy!