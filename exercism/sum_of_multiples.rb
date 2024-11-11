# Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
# `sum_of_multiples_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sum-of-multiples` directory.

class SumOfMultiples
  def initialize(*values)
    @values = values
  end

  def to(n)
    @values.flat_map { |val| (1..n / (val > 0 ? val : 1)).map { |x| x * val } }.select { |x| x < n }.uniq.sum
  end
end

p SumOfMultiples.new(1).to(1)
