class Car
    attr_accessor :color
    attr_reader :max_speed
    def initialize(color, speed)
        @color = color
        #@max_speed = speed
    end


end

car = Car.new "red", 100
puts car.max_speed
#car.max_speed = 1
puts car.max_speed
