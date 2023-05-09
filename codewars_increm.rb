def increment_string(input)
  
  num = input.scan /\d+/
  
  return input + "1" if num.empty?
  len = num[0].length - 1
  base = input.split Regexp.new("#{num[0]}")
  base[0] + sprintf("%0#{len}d", num[0].to_i + 1)
end


p increment_string("foobar001")