# Hello World in Multiple Languages Extravaganza: Json
Hello world project extravaganza, the Json version.
## Synopsis
This repository contains a collection of "Hello World" command-line batch programs; from the simplest "Hello World" Json, in plain text or encoded version, to a "Hello World" more complex. This is part of a fun and educational project that showcases how to print "Hello World" in different programming languages. The goal is to have a "Hello World" program in every programming language. This project is inspired by the [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world) project.
 
## check out the code
To get started, clone this repository to your local machine:
```bash
git clone https://github.com/silviotorre/helloworld.git
```
## Getting Started
To run the "Hello World" program navigate to the project directory and run the program. Follow the instructions below to run the "Hello World" . 
Some info: JSON (JavaScript Object Notation) is a lightweight data-interchange format commonly used for representing structured data. It uses a simple syntax to store and transmit data objects consisting of key-value pairs. JSON is widely supported and used in various programming languages and APIs for data exchange.
https://it.wikipedia.org/wiki/JavaScript_Object_Notation

- open a command prompt or terminal
- go in the json directory of hello world project.
- Read the Json files **HelloWorld** with a Json parser/reader, you also need a base 64 decoder to read the **HelloWorldEncoded** file.
- Alternatively, you can use command line to print in plain text the **HelloWorld** files as in example below.

## Example
```powershell

Get-Content .\HelloWorld.json | ConvertFrom-Json

```


## tasks
- [x] basic "Hello World" Json
- [x] Advanced "Hello World" Json
- [ ] linked "Hello World" Json files with parameters

# Extra Credit
- [ ] Add schema to the Json file
- [x] Add advanced features to the json file (es. encoding)

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