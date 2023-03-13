def use_a_binding(b)
  str = "I'm a string in inside function!"
  eval("puts str", b)
  #eval("puts str")
end
str = "I'm a string in top-level binding!"
use_a_binding(binding)