class C
    @alpha = 1.2
    # class code here
end

class C
    def x
        "x - method #{@alpha}"
    end
end
class C
    def y
        "y - method #{@alpha}"
    end
end

cobj = C.new
puts cobj.x
puts cobj.y
