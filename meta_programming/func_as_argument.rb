def sum(a, b)
  a + b
end

def action1(fun)
  method(fun).call(5, 11)
end

def action2(fun)
  send(fun, 5, 11)
end

def action3(func, *args)
  func.call(*args)
end

def action4
  args = [5, 11]
  yield  args if block_given?
end

puts action1(:sum)
puts action2(:sum)

mult = ->(a, b) { a * b }
puts action3(method('sum'), 5, 11)
puts action3(mult, 5, 11)

action4 { |arr| puts sum(*arr) }
action4 { |arr| puts mult.call(*arr) }
