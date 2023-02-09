#add = -> (a, b, c) { a + b + c }
#add = lambda {|a, b, c| a + b + c }
def add(a, b, c) 
    a + b + c 
end
fun = method(:add).curry

#fun = add.curry
fun2 = fun[1]
fun3 = fun.(1,2)

puts fun.(1,2,3)
puts fun2.(2,3)
#puts fun3.(3)
puts fun3.call(3)