fruits = [[:a, :b], [:c, :d], [:e, :f]]
result = fruits.inject({}) do |res, (f,num)|
  res[f]? res[f] += num : res [f] = num
  res
end
puts result
