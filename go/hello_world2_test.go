package main

import (
	"bytes"
	"fmt"
	"sync"
	"testing"
)

func TestPrintMessage(t *testing.T) {
	// Redirect the standard output to a buffer
	var buf bytes.Buffer
	fmt.SetOut(&buf)

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
	close(messageCh)

	// Wait for all goroutines to finish
	wg.Wait()

	// Verify the output of each goroutine
	expectedOutput := ""
	for i := 1; i <= numGoroutines; i++ {
		expectedOutput += fmt.Sprintf("Goroutine %d: Hello from Goroutine %d\n", i, i)
	}

	actualOutput := buf.String()

	if expectedOutput != actualOutput {
		t.Errorf("Unexpected output.\nExpected:\n%s\nActual:\n%s", expectedOutput, actualOutput)
	}
}
