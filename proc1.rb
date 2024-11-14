def make_counter
  n = 0
  proc { n += 1 }
end
c = make_counter
puts c.call
puts c.call
d = make_counter
puts d.call
puts c.call
