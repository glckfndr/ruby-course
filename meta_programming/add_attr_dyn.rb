#A.instance_eval("def zen; \" ---> zen #{42}\"; end")
#A.class_eval("attr_accessor :age")

def add_attributes(class_name, attr_array)
  attr_array.each {|x| class_name.class_eval("attr_accessor :#{x}")}
end

class A 
end
attributes = ["zen", "age"]
  
add_attributes(A, attributes)

b = A.new
b.zen = "I am meditating ... "
b.age = 112
puts b.age
puts b.zen