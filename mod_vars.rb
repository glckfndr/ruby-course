# Приклад програми від www.sapphiresteel.com
# Локальні змінні, оголошені в модулі, не доступні
# поза ним, навіть коли модуль домішаний до чогось.

x = 1 # локальна для цієї програми

module Foo
  x = 50 # локальна для модуля Foo
  @x = 1001
  @@f1 = lambda { x }

  # цей модуль можна домішати до чогось, але змінна x не буде доступною
  def no_bar
    #return  x
    return @@f1.()
  end

  def bar
    
    @@x = 1000 # проте, ви можете працювати з змінними екземпляру!
    return  @@x
  end
  puts("In Foo: x = #{x}") # тут ми можемо звернутись до локальної x
end

include Foo

puts("local x #{x}")
puts(no_bar) # тут ми не можемо звернутись до локальної для модуля
               # змінної x, яку використовує метод no_bar
puts("bar from module #{bar}")
puts(Foo.class)
puts(Foo.instance_variables)
puts(Foo.class_variables)