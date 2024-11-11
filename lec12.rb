require './module1'
class TestModule
  include MyModule

  def print_module
    puts 'TestModule'  # module_name
    p MyModule.multiple 7, 6
  end
end

tst = TestModule.new

tst.print_module
p tst.multiple 11, 13

p MyModule.multiple(-1, 6)
