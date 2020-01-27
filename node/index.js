const performance = require('perf_hooks').performance;
const n = 35
console.log(`Node Version: ${process.version}`);
console.log(`Test Fibonacci ${n}`)

const startTime = performance.now()
const result = fibonacci(n)
const endTime = performance.now()
const processTime = endTime - startTime
console.log(`Fibonacci(${n}): ${result}`)
console.log(`Time ${processTime / 1000}秒`)

// fibonacci関数
function fibonacci(n) {
	if (n < 2) {
		return 1
	}
	return fibonacci(n-2) + fibonacci(n-1)
}