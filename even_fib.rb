def evenFib(limit)
  fib1 = 1
  fib2 = 2
  total = 0
  counter = 0

  while counter < limit do
    counter = fib2
    if counter % 2 == 0
      total += counter
    end
    counter = fib1 + fib2
    fib1 = fib2
    fib2 = counter
  end
  puts total
end

evenFib(4000000)
