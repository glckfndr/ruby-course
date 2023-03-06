class Ghost
    
    def reflect
        self
    end

    def self.reflect
        self
    end
end

ghost = Ghost.new
puts ghost == ghost.reflect
puts Ghost == Ghost.reflect
puts ghost.reflect == Ghost.reflect