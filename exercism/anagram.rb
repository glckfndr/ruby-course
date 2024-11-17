=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

class Anagram
  def initialize(str)
    @word = str
  end

  def match(str_arr)
    str_arr.filter!{|wrd| @word.chars.all?{|x| wrd.downcase.include?(x.downcase)}}
    res = str_arr.filter{|wrd| wrd.downcase != @word.downcase  && wrd.length == @word.length}
    return [] if res.length == 0
    match = @word.match(/(.)\1/)
  unless match.nil?
   return res.filter{|wrd| wrd.match(/(.)\1/) ?  wrd.match(/(.)\1/)[0] == match[0] : true}
  end
    res
  end
end
