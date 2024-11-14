# Write your code for the 'Hamming' exercise in this file. Make the tests in
# `hamming_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/hamming` directory.
module Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError if dna1.length != dna2.length

    zipped_dna = dna1.each_char.zip(dna2.each_char)
    zipped_dna.reduce(0) { |acc, c| c[0] != c[1] ? acc + 1 : acc }
  end
end

p Hamming.compute('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT') # 7
