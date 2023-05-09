def fib(n)
  return 1 if n == 1
  return 1 if n == 2
  return fib(n-1) + fib(n - 2)
end
def perimeter(n)
    4 * (1..(n+1)).inject(0) {|acc, x| acc += fib(x)}
end

puts perimeter(7)