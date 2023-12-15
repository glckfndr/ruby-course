module MyModule
    def self.multiple x, y
        x * y
    end
    
    class MyCalculator
        def add a,b
            a + b
        end
    end
end

p MyModule::MyCalculator.new.add 2,3
p MyModule.multiple 2,3