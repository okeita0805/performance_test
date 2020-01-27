package main

import (
	"testing"
)

//
func BenchmarkAppend_Test(b *testing.B) {
	n := 35
	b.ResetTimer()
	Fibonacci(n)
}
