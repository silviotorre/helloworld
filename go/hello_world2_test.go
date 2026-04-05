package main

import (
	"fmt"
	"testing"
)

func TestFormatMessage(t *testing.T) {
	for i := 1; i <= numGoroutines; i++ {
		expectedOutput := fmt.Sprintf("Goroutine %d: Hello from Goroutine %d", i, i)
		actualOutput := formatMessage(i, fmt.Sprintf("Hello from Goroutine %d", i))

		if expectedOutput != actualOutput {
			t.Errorf("Unexpected output.\nExpected:\n%s\nActual:\n%s", expectedOutput, actualOutput)
		}
	}
}
