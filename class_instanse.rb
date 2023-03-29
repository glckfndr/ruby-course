class Polygon
    @@sides = 3
    @sides = 10
    def self.sides
      @sides
    end

    def sides
      @sides
    end

    def set_sides(sides)
      @sides = sides
    end
end

puts Polygon.class_variables # => @@sides

puts Polygon.instance_variables # => @sides

pol = Polygon.new
puts Polygon.sides # 10
puts pol.instance_variables # no variables
puts pol.sides # no value
pol.set_sides 123
puts pol.instance_variables # => @sides
puts pol.sides # => 123

