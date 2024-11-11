class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError.new() if first_operand.is_a?(String) || second_operand.is_a?(String)
    raise UnsupportedOperation.new() if operation.nil? || operation.empty? || !ALLOWED_OPERATIONS.include?(operation)
    expr = "#{first_operand} #{operation} #{second_operand}"
    expr + " = #{eval(expr)}"  rescue "Division by zero is not allowed."
  end
end

p SimpleCalculator.calculate(16, 51, "+")
# => "16 + 51 = 67"
p SimpleCalculator.calculate(32, 6, "*")
# => "32 * 6 = 192"
p SimpleCalculator.calculate(512, 4, "/")
# => "512 / 4 = 128"