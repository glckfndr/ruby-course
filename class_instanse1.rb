class Polygon
  @sides = 10
  attr_accessor :sides

  def initialize
      #  @sides = n
  end

  def self.sides=(val)
    @sides = val
  end

  def self.sides
    @sides
  end

  puts "variable inside class -> #{sides}"
end

puts Polygon.instance_variable_get("@sides")
puts "class instance_variables #{Polygon.instance_variables}"   # => @sides
puts "class class_variables #{Polygon.class_variables}"   # => @sides
puts Polygon.sides # => 10

pol = Polygon.new
puts "instance_variables #{pol.instance_variables}"  # => @sides
puts pol.sides # => 7

Polygon.sides = 12
puts Polygon.sides # => 10
puts pol.sides
