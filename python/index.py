import time
import sys

# fibonacci関数
def fibonacci(n):
	if n < 2:
		return 1
	return fibonacci(n-2) + fibonacci(n-1)

n = 35
print(sys.version)
print("Test Fibonacci", n)
start = time.time()
result = fibonacci(n)
end = time.time()- start
print("Fibonacci(", n, "): ", result)
print(format(end), "秒")

