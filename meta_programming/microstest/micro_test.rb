require_relative 'caller_tools'
class MicroTest
  def self.inherited(subclass)
    subclass.class_eval do
      def self.method_added(met)
        return unless met =~ /^test/

        subclass_obj = new
        subclass_obj.setup if subclass_obj.methods.include?(:setup)
        subclass_obj.send(met)
      end
    end
  end

  def assert(assertion)
    if assertion
      puts 'Assertion passed'
      true
    else
      puts 'Assertion failed:'
      stack = CallerTools::Stack.new
      failure = stack.find { |call| call.meth !~ /assert/ }
      puts failure
      false
    end
  end

  def assert_equal(expected, actual)
    result = assert(expected == actual)
    puts "(#{actual} is not #{expected})" unless result
    result
  end
end
