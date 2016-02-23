fib = [0, 1]
i = 1
while i < 9
  fib << (fib[i] + fib[i-1])
  i += 1
end
