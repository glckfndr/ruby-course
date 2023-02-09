def sum
    
    if block_given?
        s = 0
        #[4, 0, -12].each{|x | s += yield x}
        s += yield 4
        s += yield 0
        s += yield -12
        #sum =  [4, 0, -12].inject(0) {|s, x| s + yield x}
        
        #return s
     #[4, 0, -12].inject(0) {|s, x| s + block.call(x)}
        return s
    end
    
end

result =  sum {|x| x < 0 ? x**2: x}
puts result