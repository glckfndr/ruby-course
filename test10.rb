class Example
    attr_accessor :color
    def to_s
      color += "!!!"
      "color = #{color}"
    end
end
   
ex = Example.new
ex.color = 'red'
puts ex.to_s