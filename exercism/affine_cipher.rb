# Write your code for the 'Affine Cipher' exercise in this file. Make the tests in
# `affine_cipher_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/affine-cipher` directory.
class Affine
  def initialize(a, b)
    @a = a
    @b = b
    @m = 26
    raise ArgumentError unless @a.gcd(@m) == 1
  end

  def encode(plaintext)
    plaintext.gsub(/[\s,.]/, '').downcase.each_char.map do |c|
      get_char(:encryption, c)
    end.join.scan(/.{1,5}/).join(' ')
  end

  def decode(ciphertext)
    ciphertext.delete(' ').each_char.map { |c| get_char(:decryption, c) }.join
  end

  private

  def mmi(a, m)
    m.times { |x| return x if (a * x) % m == 1 }
    nil
  end

  def get_char(func, c)
    c.match?(/\d/) ? c : ('a'.ord + send(func, (c.ord - 'a'.ord))).chr
  end

  def encryption(x)
    (@a * x + @b) % @m
  end

  def decryption(x)
    (mmi(@a, @m) * (x - @b)) % @m
  end
end
