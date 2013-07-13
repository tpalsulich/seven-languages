fib := method(
  a := 0
  b := 1
  for(i, 1, doMessage(call message argAt(0)) - 1, c := a + b; a := b; b := c)
)

rfib := method(n,
	if(n < 2, return n)
	return rfib(n - 1) + rfib(n - 2)
)

rfib2 := method(n,
	if(n < 1, return n)
	rfib2_helper(n, 0, 1)
)
rfib2_helper := method(n, a, b,
	if(n < 2, return b)
	rfib2_helper(n - 1, b, a + b)
)

"What is the 10th number in the Fibonacci Sequence?" println
"Iterative Solution:" println
fib(10) println
"Recursive Solution:" println
rfib(10) println
"Better Recursive Solution:" println
rfib2(10) println