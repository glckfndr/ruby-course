# Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
# `rna_transcription_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/rna-transcription` directory.

module Complement
  @@dna_dic = { 'A' => 'U', 'G' => 'C', 'C' => 'G', 'T' => 'A' }
  def self.of_dna(dna)
    dna.chars.map { |c| @@dna_dic[c] }.join
  end
end
p Complement.of_dna('ACGTGGTCTTAA') # 'UGCACCAGAAUU'
