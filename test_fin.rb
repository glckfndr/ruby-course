result = (0...5).to_a.select do |number|
  number % 2 != 0
end.inject do |res, number|
  res += number
  res
end

puts result
