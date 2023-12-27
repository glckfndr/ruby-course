class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  def deconstruct
    puts 'deconstruct called'
    [@x, @y]
  end

  def deconstruct_keys(keys)
    puts "deconstruct_keys called with #{keys.inspect}"
    { x: @x, y: @y }
  end
end

class SuperPoint < Point
end

case Point.new(1, -2)
in SuperPoint(x: 0.. => px)
  puts "matched: #{px}"
else
  puts 'not matched'
end
#=> "not matched"

case SuperPoint.new(1, -2)
in SuperPoint[x: 0.. => px] # [] or () parentheses are allowed
  puts "matched: #{px}"
else
  puts 'not matched'
end
