=begin
Write your code for the 'Transpose' exercise in this file. Make the tests in
`transpose_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/transpose` directory.
=end
module Transpose

  def self.transpose input
    return "" if input.empty?
    lines = input.split("\n")
    max_length = lines.map(&:length).max
    transposed = lines.map { |line| line.ljust(max_length, "^").chars }.transpose
    cleaned = transposed.map { |line| line.join.gsub(/\^+$/, '').gsub(/\^/, ' ')}
    cleaned.join("\n")
  end
end
