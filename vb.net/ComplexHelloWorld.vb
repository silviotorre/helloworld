Imports System ' Import the System namespace. This namespace contains the Console class

' Singleton design pattern
Public Class SingletonHelloWorld
    Private Shared _instance As SingletonHelloWorld
    ' Private static field to hold the single instance of the class
    Private Sub New()
        ' Private constructor to prevent direct instantiation
    End Sub

    Public Shared Function GetInstance() As SingletonHelloWorld
        ' Lazy initialization of the instance
        If _instance Is Nothing Then
            _instance = New SingletonHelloWorld()
        End If

        Return _instance
        ' Return the single instance
    End Function

    Public Sub PrintHelloWorld()
        Console.WriteLine("Hello, World!")
    End Sub
End Class

' Factory method design pattern
Public Class HelloWorldFactory
    Public Shared Function CreateHelloWorld() As SingletonHelloWorld
        Return SingletonHelloWorld.GetInstance()
    End Function
End Class

Module HelloWorld
    Sub Main()
        ' Using the factory method to create an instance of SingletonHelloWorld
        Dim helloWorld As SingletonHelloWorld = HelloWorldFactory.CreateHelloWorld()

        ' Print "Hello, World!" using the instance
        helloWorld.PrintHelloWorld()

        ' Wait for user input before exiting
        Console.ReadLine()
    End Sub
End Module
