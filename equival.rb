def max_sequence(arr)
  return 0 if arr.empty?

  max_elem = arr.max
  arr.inject(0) do |sum, x|
    sum += x
    sum = 0 if sum < 0
    max_elem = [max_elem, sum].max
    sum
  end
  max_elem
end
puts max_sequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
