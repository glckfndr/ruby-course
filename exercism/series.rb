=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end
class Series

  def initialize(str)
    raise ArgumentError.new  if str.empty?
    @data = str
  end

  def slices(n)
    raise ArgumentError.new  if @data.length < n
    res = []
    @data.chars.each_cons(n) {|x| res.push(x.join)}
    res
  end

end
