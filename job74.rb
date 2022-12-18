def m1
    if block_given?
        return Proc.new { yield }
    else
        return "Method without block"
    end

    
end


res = m1 { puts "kjkjkj"}
res.call
    

