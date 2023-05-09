class Shape
  def self.sides=(value)
        puts "No Sides in Shape #{value}"
  end
end

class Triangle < Shape
  self.sides = 0
end

shp = Shape.new
puts Shape.class_variables # => @@sides
puts Shape.instance_variables # => @sides
