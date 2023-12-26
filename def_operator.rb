#
class Point
  attr_reader :x, :y

  def initialize(x = 0, y = 0)
    @x = x
    @y = y
  end

  def *(p)
    @x * p.x + @y * p.y
  end

  def to_s
    "x = #{@x}, y = #{@y}"
  end
end

p1 = Point.new 2, 3
p2 = Point.new 4, -1
puts p1 * p2
