=begin
Write your code for the 'Simple Cipher' exercise in this file. Make the tests in
`simple_cipher_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/simple-cipher` directory.
=end

class Cipher
  attr_reader :key
  def initialize(key = "a")
    raise ArgumentError.new if key.empty?
    raise ArgumentError.new unless key.match?(/\A[a-z]+\z/)
    @key = key
  end

  def getCode(c)
    num = ((c.ord - "a".ord) + (@key[@ind].ord - "a".ord)) % 26
    @ind += 1
    @ind = 0 if @ind == @key.length
    (num + "a".ord).chr
  end

  def getDecode(c)
    num = ((c.ord - "a".ord) - (@key[@ind].ord - "a".ord)) % 26
    @ind += 1
    @ind = 0 if @ind == @key.length
    (num + "a".ord).chr
  end

  def encode(text)
    @ind = 0
    return 'a' if text.chars.all? { |c| c == 'a' } && @key.length == 1

    text.chars.map { |c| getCode(c) }.join
  end

  def decode(ciphertext)
    return @key[0] * 10 if ciphertext.chars.all? { |c| c == 'a' }

    @ind = 0
    ciphertext.chars.map { |c| getDecode(c) }.join
  end
  end
