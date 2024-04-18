def fibonacci(n)
  a = 0
  b = 1

  n.times do
    temp = a
    a = b
    b = temp + b
  end

  return a
end

# Print the first 10 numbers in the Fibonacci sequence
10.times do |n|
  result = fibonacci(n)
  puts result
end

