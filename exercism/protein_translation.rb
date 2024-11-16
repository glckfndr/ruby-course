# Write your code for the 'Protein Translation' exercise in this file. Make the tests in
# `protein_translation_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/protein-translation` directory.
class InvalidCodonError < StandardError
end

module Translation
  @@cod = [%w[AUG], %w[UUU UUC], %w[UUA UUG], %w[UCU UCC UCA UCG],
           %w[UAU UAC], %w[UGU UGC], %w[UGG], %w[UAA UAG UGA]]
  @@prot = %w[Methionine Phenylalanine Leucine Serine Tyrosine Cysteine Tryptophan STOP]
  @@dic = @@prot.zip(@@cod).map { |p, dna| dna.map { |dn| [dn, p] } }.flatten(1).to_h

  def self.of_rna(strand)
    return [] if strand.empty?

    res = []
    strand.chars.each_slice(3) do |x|
      prot = @@dic[x.join]
      break if prot == 'STOP'
      raise InvalidCodonError if prot.nil?

      res.push(prot)
    end
    res
  end
end
strand = 'UUCUUCUAAUGGU'
puts Translation.of_rna(strand)
