module Stacklike
  def stack
    @stack ||= []
  end
  
  def push_to_stack(obj)
    stack.push(obj)
  end
  
  def pop_from_stack
    stack.pop
  end
end

#require_relative "stacklike"
class Stack
  include Stacklike
end

stack = Stack.new
stack.push_to_stack("Porshe")
stack.push_to_stack("Mitsubishi")
p stack.stack
puts ("taken: " + stack.pop_from_stack)
p stack.stack