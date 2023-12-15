def numbers(arr)
  res = []
  arr.each do |el|
    res << (yield el)
  end
  res
end

result = numbers([1, 2, 3]) do |number|
  number << 2
end

print result
