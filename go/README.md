# Hello World in Multiple Languages Extravaganza: Go
Hello world project extravaganza, the Go version.
## Synopsis
This repository contains a version of "Hello World" programs written in Go;

indeed this is part of a fun and educational project that showcases how to print "Hello World" in different programming languages. The goal is to have a "Hello World" program in every programming language. This project is inspired by the [GitHub Hello World](https://docs.github.com/en/get-started/quickstart/hello-world) project and you can found it in [Hello World Extravaganza website](https://silviotorre.github.io/helloworld/).
 
## check out the code
To get started, clone this repository to your local machine:
```bash
git clone https://github.com/silviotorre/helloworld.git
```
## Getting Started
To run the "Hello World" program navigate to the project directory and run the program. Follow the instructions below to run the "Hello World".
[Go programming language](https://go.dev/) is a statically-typed, compiled programming language known for its simplicity, efficiency, and built-in support for concurrency. It promotes clean code, offers fast execution, and provides powerful features like goroutines and channels for concurrent programming.

- Install Go: If you haven't already, download and install Go from the official Go website: https://golang.org/dl/
- Open a terminal or command prompt: Launch your terminal or command prompt application.
- Navigate to the Go directory.
- Compile the program following the example below
- After successful compilation, run the following command to execute the compiled program like in example below

```go
go build hello_world.go
./hello_world
```
Here's an example of a more complex "Hello, World!" program in Go that demonstrates the use of patterns and some exclusive advantages of the Go language like Goroutines and Channels.
    
    ```go
    go build hello_world2.go
    ./hello_world2
    ```

Here's an example of a unit test for the given code. The test ensures that each goroutine receives the expected message and prints it correctly.

    ```go
    go test hello_world2.go hello_world2_test.go
    ```
Or you can run the test with the following command:
    
        ```go
        go test -v
        ```
The `-v` flag enables verbose output, which prints the name of each test and its result. You can also use the `-run` flag to run only specific tests. For example, the following command runs only the `TestHelloWorld` test:

    ```go
    go test -v -run TestHelloWorld
    ```
 The *go test* command also supports the `-bench` flag to run benchmarks. For example, the following command runs all benchmarks in the package:

    ```go
    go test -bench .
    ``` 

## Goroutines

Goroutines are lightweight concurrent threads of execution in Go. They are designed to be lightweight and efficient, allowing you to run multiple tasks concurrently within a single program. Goroutines are managed by the Go runtime and utilize multiplexed thread scheduling, meaning that they can be scheduled onto multiple OS threads as needed.

Goroutines are created using the `go` keyword followed by a function call. When a function is called as a goroutine, it starts running concurrently alongside other goroutines. Goroutines are independent of each other and can execute simultaneously, enabling concurrent execution without the overhead associated with traditional threads.

The key advantages of using goroutines are:

- **Concurrency**: Goroutines enable concurrent execution, allowing multiple tasks to proceed independently and potentially in parallel.
- **Efficiency**: Goroutines are lightweight, with low overhead compared to traditional threads, making it feasible to have thousands or even millions of goroutines within a single program.
- **Synchronization**: Goroutines can communicate and synchronize with each other using channels.

## Channels

Channels are a fundamental construct in Go that facilitate communication and synchronization between goroutines. A channel is a typed conduit through which you can send and receive values between goroutines. It provides a safe and efficient way to exchange data or signals between concurrent processes.

To create a channel, you use the `make` function with the `chan` keyword followed by the type of the values that will be passed through the channel. For example, `make(chan int)` creates an unbuffered channel of type `int`.

Channels can be used to:

- **Send and Receive Data**: Goroutines can send values to a channel using the `<-` operator, and other goroutines can receive those values using the same operator.
- **Synchronize Execution**: Channels can be used to synchronize the execution of goroutines. For example, a goroutine may wait for a value to be sent on a channel before proceeding further.
- **Coordinate Termination**: Channels can be used to signal the termination of goroutines. By closing a channel, you can notify receiving goroutines that no more values will be sent.

Channels in Go have the following characteristics:

- **Blocking**: Sending or receiving from a channel will block the goroutine until the corresponding operation can proceed. This allows for synchronization between goroutines.
- **Buffering**: Channels can be buffered, meaning they can hold a limited number of values before the sender blocks. Buffered channels enable asynchronous communication between goroutines.
- **Unidirectional**: Channels can be restricted to only sending or receiving operations by specifying the direction of the channel in function signatures or variable declarations.

Overall, goroutines and channels form the core concurrency primitives in Go, enabling easy and efficient concurrent programming while maintaining synchronization and communication between different parts of a program.


## Personal notes
I like Go! It's a very interesting language, it's easy to learn and it's very powerful. I like the fact that it's a compiled language and it's very fast. I like the fact that it's a statically typed language and it's very safe. I like the fact that it's a modern language and it's very productive. I like the fact that it's a concurrent language and it's very efficient. I like the fact that it's a simple language and it's very readable. I like the fac... ok, I think you got the point. I like Go!

## tasks
- [x]  basic "Hello World"  Go program
- [x]  Advanced "Hello World" Go program

# Extra Credit
- [x] Add Goroutines or channels to the program
- [x] Add a test to the program
- [ ] Add a benchmark to the program
- [ ] Add a Dockerfile to the program
- [ ] Add a GitHub Action to the program

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