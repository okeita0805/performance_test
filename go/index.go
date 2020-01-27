package main

import (
	"fmt"
	"time"
)

func main() {
	n := 35
	fmt.Printf("Test Fibonacci %d\n", n)
	startTime := time.Now()
	fibonacci := Fibonacci(n)
	endTime := time.Now()
	fmt.Printf("Fibonacci(%d): %d\n", n, fibonacci)
	fmt.Printf("Time %f秒\n", endTime.Sub(startTime).Seconds())
}

// フィボナッチ関数
func Fibonacci(n int) int {
	if n < 2 {
		return 1
	}
	return Fibonacci(n-2) + Fibonacci(n-1)
}
