class Polygon
    @@sides = 3
    @sides = 10
    def self.sides
      @sides
    end
end

puts Polygon.class_variables # => @@sides
puts Polygon.instance_variables # => @sides

pol = Polygon.new
puts Polygon.sides

