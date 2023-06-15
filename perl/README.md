# Hello World in Multiple Languages Extravaganza: Perl
Hello world project extravaganza, the Perl version.
## Synopsis
This repository contains a version of "Hello World" programs written in Perl;

indeed this is part of a fun and educational project that showcases how to print "Hello World" in different programming languages. The goal is to have a "Hello World" program in every programming language. This project is inspired by the [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world) project and you can found it in [Hello World Extravaganza website](https://silviotorre.github.io/helloworld/).
 
## check out the code
To get started, clone this repository to your local machine:
```bash
git clone https://github.com/silviotorre/helloworld.git
```
## Getting Started
To run the "Hello World" program navigate to the project directory and run the program. Follow the instructions below to run the "Hello World".


- If you're on a Unix-like system, Perl is likely already installed. If you're on Windows, you can download Perl from [ActiveState](https://www.activestate.com/products/perl/).
- Open a terminal or command prompt: Launch your terminal or command prompt application.
- Navigate to the Perl directory.
- Compile the program following the example below
- After successful compilation, run the following command to execute the compiled program like in example below

```perl
perl hello_world.pl 
```
Here's an example of a more complex "Hello, World!" program in Perl. This one use regular expression and substitution operator 's///' and the flexibility of Perl to print the string in different ways. Checkout the code in the file hello_world2.pl and try to use say instead of print to see the difference.
    
    ```perl
    Perl build hello_world2.pl
    ```
## Rest API
A rest API is an application program interface (API) that uses HTTP requests to GET, PUT, POST and DELETE data.
In Perl can be used to create a REST API using various frameworks. One of the popular ones is Dancer. The following is an example of how you can create a simple REST API using Dancer that returns "Hello, World!".
- Install Dancer using as in example below
- run the app.pl file also in example below
- then open a browser and navigate to http://localhost:3000/hello/

```perl
cpan Dancer
perl app.pl
```
the output should be like this:
```perl
$ perl app.pl
>> > Dancer2 v0.300000 server 12045 listening on http://0.0.0.0:3000
```
[Dancer](https://perldancer.org/) is a lightweight web application framework for Perl.



## tasks
- [x]  basic "Hello World"  Perl program
- [x]  Advanced "Hello World" Perl program

# Extra Credit
- [x] Add a flexibile example to the program
- [x] Add a rest api to the program

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