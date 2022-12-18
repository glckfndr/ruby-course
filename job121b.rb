module ConsoleInput 
   
    def string
        print "Enter any string " 
        str = gets.chomp.strip
    end

    def number
        print  "Enter any number " 
        float_number = gets.chomp.strip.to_f        
    end

    def symbol
        print "Enter any letters " 
        sym = gets.chomp.to_symbol        
    end
    
    def ConsoleInput.hash 
        print "Enter hash in format 'key: value' or 'key => value'"
        key, value = gets.chomp.strip.gsub(/[:,=>]/," ").split
        {key => value}        
    end
end

include ConsoleInput
p "You entered: " 
p ConsoleInput.hash