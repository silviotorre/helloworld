Imports System ' Import the System namespace. This namespace contains the Console class

' Singleton design pattern
Public Class SingletonHelloWorld
    Private Shared _instance As SingletonHelloWorld
    ' Private static field to hold the single instance of the class
    Private Sub New()
        ' Private constructor to prevent direct instantiation
    End Sub

    Public Shared Function GetInstance() As SingletonHelloWorld
        ' Lazy initialization of the instance. 
        ' Lazy initialization is the tactic of delaying the creation of an object, the calculation of a value, or some other expensive process until the first time it is needed.
        ' This is useful if the object is expensive to create, and you only need it at certain times in the program.
        ' The first time the method is called, the single instance is created
        ' Subsequent calls will return the single instance that was created the first time
        ' This is called a singleton because only one instance of the class can exist at any given time
        ' This is useful if you want to ensure that only one instance of a class exists at any given time
        ' For example, if you want to ensure that only one instance of a class is created to access a database
        ' This is because multiple instances of a class accessing a database can cause concurrency issues
        ' For example, if two instances of a class are trying to update the same record in a database at the same time
        ' The first instance will update the record, and the second instance will overwrite the changes made by the first instance
        ' This is because the second instance is unaware of the changes made by the first instance
        ' This is also a progamming pattern called the singleton pattern.
        ' The singleton pattern is a software design pattern that restricts the instantiation of a class to one "single" instance.
        ' This is useful when exactly one object is needed to coordinate actions across the system.
        ' The term comes from the mathematical concept of a singleton.
        ' In mathematics, a singleton, also known as a unit set, is a set with exactly one element.
        ' For example, the set {0} is a singleton.
        ' The singleton pattern is implemented by creating a class with a method that creates a new instance of the class if one does not exist.
        ' If an instance already exists, it simply returns a reference to that object.
        ' To make sure that the object cannot be instantiated any other way, the constructor is made private.
        ' The singleton pattern must be carefully constructed in multi-threaded applications.
        ' If two threads are to execute the creation method at the same time when a singleton does not yet exist, they both must check for an instance of the singleton and then only one should create the new one.
        ' In the below code, the first time the GetInstance method is called, the _instance field is null, so the if statement will be true, and a new instance of the class will be created and assigned to the _instance field.
        ' Subsequent calls to the GetInstance method will return the _instance field, which is the single instance of the class that was created the first time the GetInstance method was called.
        ' This is because the _instance field is no longer null, so the if statement will be false, and the _instance field will be returned.
        ' if you want to see this in action, you can add a Console.WriteLine statement to the constructor, and you will see that the constructor is only called once.
        ' to learn more about the singleton pattern, you can visit the following link:
        ' https://en.wikipedia.org/wiki/Singleton_pattern
        ' to learn more about lazy initialization, you can visit the following link:
        ' https://en.wikipedia.org/wiki/Lazy_initialization
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
' factory method is a creational design pattern which solves the problem of creating product objects without specifying their concrete classes.
' factory method defines a method, which should be used for creating objects instead of direct constructor call (new operator).
' subclasses can override this method to change the class of objects that will be created.
' to learn more about the factory method design pattern, you can visit the following link:
' https://en.wikipedia.org/wiki/Factory_method_pattern
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
        ' Console.ReadLine() reads a line from the standard input stream
        ' alternatively, you can use Console.ReadKey() to read a single character
        ' for example if you want to exit the program when the user presses the x key
        ' you can use the following code:
        ' Dim key As ConsoleKeyInfo = Console.ReadKey()
        ' If key.Key = ConsoleKey.X Then
        '     Exit Sub
        ' End If
        
    End Sub
End Module
