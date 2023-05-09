class C
    @alpha = 1.2
    @@alpha = 1.3
    # class code here
    def self.alpha
        puts "----> @ #{@alpha}   @@ #{@@alpha} " 
    end
end

class C
    def x
        "x - method Class @#{@alpha}"
    end
end
class C
    def y
        "y - method Class @#{@alpha}"
    end
end

class D < C
    #@alpha = 11.2
end

cobj = C.new
puts cobj.x
puts cobj.y
C.alpha
D.alpha