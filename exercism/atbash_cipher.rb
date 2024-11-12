# Write your code for the 'Atbash Cipher' exercise in this file. Make the tests in
# `atbash_cipher_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/atbash-cipher` directory.
module Atbash
  CODE = 'abcdefghijklmnopqrstuvwxyz'
  @@len = CODE.length - 1

  def self.encode(text)
    text.downcase.gsub(/[\s,.]/, '').each_char.reduce('') do |acc, c|
      acc.concat(get_code(c))
    end.scan(/.{1,5}/).join(' ')
  end

  def self.decode(text)
    text.downcase.gsub(/\s/, '').each_char.reduce('') do |acc, c|
      acc.concat(get_code(c))
    end
  end

  def self.get_code(c)
    return CODE[@@len - CODE.index(c)] if c.match?(/[a-z]/)

    c
  end
end
