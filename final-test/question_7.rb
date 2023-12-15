def numbers(array)
  result = []
  array.each do |element|
    result << (yield element)
  end
  result
end
result = numbers([1,2,3]) { |number| number << 2}
print result
