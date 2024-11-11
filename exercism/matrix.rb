# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.

class Matrix
  attr_reader :rows, :columns

  def initialize(str)
    @rows = str.split("\n").map { |x| x.split.map(&:to_i) }
    @columns = @rows.transpose
  end
end

p Matrix.new("1 2\n3 4").rows
p Matrix.new("1 2\n3 4").columns
