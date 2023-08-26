package main // Package declaration

import (
	"fmt" // Import package fmt. This package implements formatted I/O with functions analogous to C's printf and scanf.
	"sync"// Import package sync. This package provides basic synchronization primitives such as mutual exclusion locks.
)

// Number of goroutines to spawn
const numGoroutines = 5

// Channel to communicate between goroutines and main
var wg sync.WaitGroup

//hello_world2.go is a program that demonstrates the use of channels to communicate between goroutines and the main goroutine.
func main() {
	// Create a buffered channel of strings
	messageCh := make(chan string, numGoroutines)

	// Spawn multiple goroutines
	for i := 1; i <= numGoroutines; i++ {
		wg.Add(1)
		go printMessage(i, messageCh)
	}

	// Send messages to the channel
	for i := 1; i <= numGoroutines; i++ {
		messageCh <- fmt.Sprintf("Hello from Goroutine %d", i)
	}

	// Close the channel to indicate no more messages
	close(messageCh)

	// Wait for all goroutines to finish
	wg.Wait()
}

// Function to print messages received from the channel
func printMessage(goroutineID int, ch chan string) {
	// Defer the Done call to notify the main goroutine
	defer wg.Done()

	// Iterate over messages received from the channel
	for message := range ch {
		fmt.Printf("Goroutine %d: %s\n", goroutineID, message)
	}
}
// find this program here: https://github.com/silviotorre/helloworld/blob/main/go/hello_world2.go 
// info here; https://silviotorre.github.io/helloworld/go/  
// run this program here: https://play.golang.org/p/2Z3Z4zXZ3Zw
// and here: https://onecompiler.com/go/3wvq6q3xg