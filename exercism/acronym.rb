# Write your code for the 'Acronym' exercise in this file. Make the tests in
# `acronym_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/acronym` directory.
class Acronym
  def self.abbreviate(full_name)
    word_array = full_name.split(/[\s-]/)
    acr = word_array.map { |x| x[0].upcase unless x[0].nil? }
    acr.join
  end
end
