package main // Package declaration

import (
	"fmt"  // Import package fmt. This package implements formatted I/O with functions analogous to C's printf and scanf.
	"sync" // Import package sync. This package provides basic synchronization primitives such as mutual exclusion locks.
)

// Number of goroutines to spawn
const numGoroutines = 5

//hello_world2.go is a program that demonstrates the use of channels to communicate between goroutines and the main goroutine.
func main() {
	var wg sync.WaitGroup
	messageCh := make(chan string, numGoroutines)
	outputCh := make(chan string, numGoroutines)

	for i := 1; i <= numGoroutines; i++ {
		wg.Add(1)
		go printMessage(i, messageCh, outputCh, &wg)
	}

	for i := 1; i <= numGoroutines; i++ {
		messageCh <- fmt.Sprintf("Hello from Goroutine %d", i)
	}
	close(messageCh)

	wg.Wait()
	close(outputCh)

	for line := range outputCh {
		fmt.Println(line)
	}
}

// Function to print messages received from the channel
func printMessage(goroutineID int, ch <-chan string, outputCh chan<- string, wg *sync.WaitGroup) {
	defer wg.Done()

	for message := range ch {
		outputCh <- formatMessage(goroutineID, message)
	}
}

func formatMessage(goroutineID int, message string) string {
	return fmt.Sprintf("Goroutine %d: %s", goroutineID, message)
}
// find this program here: https://github.com/silviotorre/helloworld/blob/main/go/hello_world2.go 
// info here; https://silviotorre.github.io/helloworld/go/  
// run this program here: https://play.golang.org/p/2Z3Z4zXZ3Zw
// and here: https://onecompiler.com/go/3wvq6q3xg
