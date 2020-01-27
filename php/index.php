<?php
function fibonacci(int $n): int
{
    return(($n < 2) ? 1 : fibonacci($n - 2) + fibonacci($n - 1));
}
$n = 35;
echo 'TEST: Fibonacci 35', PHP_EOL;
echo 'PHP Version:', phpversion(), PHP_EOL;
$start     = microtime(true);
$fibonacci = fibonacci($n);
$stop      = microtime(true);
echo sprintf("Fibonacci(%s): %s\nTime: %s秒", $n, $fibonacci, $stop - $start), PHP_EOL, PHP_EOL;
