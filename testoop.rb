class Shape
  COLOR = "red"
  @@color = "red"
  def initialize
    
   # COLOR = "blue"
  end
  def self.draw
    #"The #{color} color}"
    #"The #{COLOR} color}"
  end

  def Shape.draw
    #"The #{color} color}"
    "The #{@color} color #{@ggg}"
  end
end

#puts Shape::COLOR
puts Shape.draw
