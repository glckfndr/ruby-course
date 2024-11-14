def sum(a, b)
  a + b
end

def action(fun)
  method(fun).call(5, 11)
end

def action2(fun)
  send(fun, 5, 11)
end

puts action(:sum)
puts action2(:sum)
