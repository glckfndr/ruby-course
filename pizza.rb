class Pizza
    @@count = 0
    @@failed_creation = 0
    @number = 0
    @ingredients = []    

    def initialize(d, ingredients)
        
        if [25, 50].include?(d)
            @d = d
            @ingredients = ingredients
            @@count += 1
            @number = @@count
        else
            @d = 0
            @ingredients = []
            @number = 0
            @@failed_creation += 1
        end        
    end

    def self.failInstance
        @@failed_creation
    end

    def description()
        print "Піца № #{@number} (діагональ = #{@d}) містить #{@ingredients.each{|x| x}}.".gsub('"', '').gsub(', ', ',')
    end
end

pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
puts pizza1.description
pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
puts pizza2.description
puts Pizza.failInstance

