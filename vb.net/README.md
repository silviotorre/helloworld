# Hello World in Multiple Languages Extravaganza: Vb.Net
Hello world project extravaganza, the Vb.Net version.
## Synopsis
This repository contains a collection of "Hello World" command-line batch programs; from the simplest "Hello World" Vb.Net, in plain text, to a "Hello World" more complex. This is part of a fun and educational project that showcases how to print "Hello World" in different programming languages. The goal is to have a "Hello World" program in every programming language. This project is inspired by the [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world) project and you can found it in [Hello World Extravaganza website](https://silviotorre.github.io/helloworld/).
 
## check out the code
To get started, clone this repository to your local machine:
```bash
git clone https://github.com/silviotorre/helloworld.git
```
## Getting Started
To run the "Hello World" program navigate to the project directory and run the program. Follow the instructions below to run the "Hello World" .
Some info: Vb.Net


For general more information see [https://en.wikipedia.org/wiki/Vb.Net](https://en.wikipedia.org/wiki/Vb.Net)

- If you're using an IDE, select [HelloWorld.vb](HelloWorld.vb) and open it, click on the "Run" or "Start" button to execute the program.
- If you're using a command-line interface, open a command prompt or terminal
- go in the Vb.Net directory of hello world project.
- execute the command *vbc HelloWorld.vb* to compile the program.
- Then execute the generated executable by running HelloWorld.exe. You need .net framework installed on your machine to do so.


```commandline

vbc HelloWorld.vb

```
## the .net framework
The .NET Framework is a software framework developed by Microsoft that runs primarily on Microsoft Windows. It includes a large class library called Framework Class Library (FCL) and provides language interoperability (each language can use code written in other languages) across several programming languages. Programs written for .NET Framework execute in a software environment (in contrast to a hardware environment) named the Common Language Runtime (CLR). The CLR is an application virtual machine that provides services such as security, memory management, and exception handling. As such, computer code written using .NET Framework is called "managed code". FCL and CLR together constitute the .NET Framework.

- To download the .net framework go to [https://dotnet.microsoft.com/download](https://dotnet.microsoft.com/download)
- To check if the .net framework is installed on your machine, open a command prompt or terminal and execute the command *dotnet --version*.
- To check if vb.net is installed on your machine, open a command prompt or terminal and execute the command *vbc --version*.
- To update the .net framework, download the latest version and install it.
- info about the .net framework can be found at [https://en.wikipedia.org/wiki/.NET_Framework](https://en.wikipedia.org/wiki/.NET_Framework)

## An advanced version of Vb.Net "Hello World" program

Singleton design pattern to ensure that only one instance of the SingletonHelloWorld class is created. The factory method design pattern is used to create the instance of SingletonHelloWorld through the HelloWorldFactory class. Using these design patterns, we  achieve a better control over object creation and access to the SingletonHelloWorld class, providing more flexibility and extensibility to the program.

**What are design patterns?**
Design patterns are reusable solutions to common programming problems. They were popularized with the 1994 book Design Patterns: Elements of Reusable Object-Oriented Software by Erich Gamma, John Vlissides, Ralph Johnson and Richard Helm (who are commonly known as a Gang of Four, hence the GoF acronym).
Design patterns also provide a common language or vocabulary for developers to efficiently describe the purpose of a piece of code. 
If you are new to object-oriented programming, check out this object-oriented programming example.

**What is Singleton design pattern?**
The Singleton design pattern is a creational pattern that ensures only one instance of the class exists and provides a global point of access to that instance. It is named after the singleton set, which is defined to be a set containing one element. The pattern was designed to be used when exactly one object is needed to coordinate actions across the system. The term comes from the mathematical concept of a singleton.

**What are the "Factory Method" design pattern?**
The factory method design pattern is a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created. This is done by creating objects by calling a factory method—either specified in an interface and implemented by child classes, or implemented in a base class and optionally overridden by derived classes—rather than by calling a constructor.

Ok, let's see the code and the working of the program.


- If you're using an IDE, select [ComplexHelloWorld.vb](ComplexHelloWorld.vb) and open it, check the code and familiarize with design patterns used.
- Click on the "Run" or "Start" button to execute the program. Use debug to see the code in action.
- If you're using a command-line interface, open a command prompt or terminal
- go in the Vb.Net directory of hello world project.
- To see the code in windows use the command *type ComplexHelloWorld.vb*. In Linux use the command *cat ComplexHelloWorld.vb*.
- execute the command *vbc ComplexHelloWorld.vb* to compile the program.
- Then execute the generated executable by running ComplexHelloWorld.exe. You need .net framework installed on your machine to do so.
  
```commandline

vbc ComplexHelloWorld.vb

```

## tasks
- [x]  basic "Hello World" Vb.Net
- [x]  Advanced "Hello World" Vb.Net 

# Extra Credit
- [ ]  Create a "Hello" class library with the Vb.Net function
- [x]  Add advanced features to the Vb.Net function
- [ ]  Add unit test to the Vb.Net function

## Contributing
Feel free to contribute your own "Hello World" programs to this repository. Simply create a new directory with the name of the programming language and add a file named hello-world.<extension> with your implementation. Don't forget to update the README file to include your contribution!

## Contributors
- Silvio Torre (silviotorre)  - creator, maintainer

## License
- This project is licensed under the MIT License - see the [MIT](https://choosealicense.com/licenses/mit/) file for details

## References
- [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world)

## Home of this project
- [GitHub Hello World Extravaganza](https://github.com/silviotorre/helloworld/)

Enjoy and happy coding!