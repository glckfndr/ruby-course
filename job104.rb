class Pizza
    attr_reader :number, :d
    attr_accessor :ingredients
    @@count = 0
    @@failed_creation = 0

    def initialize(diameter)
            @d = diameter
            @ingredients = []
            @@count += 1
            @number = @@count
                
    end
    
    def ingredients=(val)
        if(@d != 0)
            @ingredients = val
        end
    end

    #def d=(val)
       # raise NoMethodError.new "Error with type NoMethodError"
    #end

    def self.failInstance
        @@failed_creation
    end

    def description()
        print "Піца № #{@number} (діагональ = #{@d}) містить #{@ingredients.each{|x| x}}.".gsub('"', '').gsub(', ', ',')
    end
end

pizza1 = Pizza.new(24)
puts pizza1.description
pizza1.ingredients = ['mushroom']
puts pizza1.description
puts pizza1.number
pizza1.d = 2