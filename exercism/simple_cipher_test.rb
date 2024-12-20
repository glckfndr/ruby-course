require 'minitest/autorun'
require_relative 'simple_cipher'
class RandomKeyCipherTest < Minitest::Test
  def setup
    @cipher = Cipher.new
  end

  def test_cipher_key_is_letters
    assert_match(/\A[a-z]+\z/, @cipher.key)
  end

  # Here we take advantage of the fact that plaintext of "aaa..." doesn't
  # outputs the key. This is a critical problem with shift ciphers, some
  # characters will always output the key verbatim.
  def test_cipher_encode
    plaintext = 'aaaaaaaaaa'
    assert_equal(@cipher.key[0, 10], @cipher.encode(plaintext))
  end

  def test_cipher_decode
    plaintext = 'aaaaaaaaaa'
    assert_equal(plaintext, @cipher.decode(@cipher.key[0, 10]))
  end

  def test_cipher_reversible
    plaintext = 'abcdefghij'
    assert_equal(plaintext, @cipher.decode(@cipher.encode(plaintext)))
  end
end

class IncorrectKeyCipherTest < Minitest::Test
  def test_cipher_with_caps_key
    assert_raises ArgumentError do
      Cipher.new('ABCDEF')
    end
  end

  def test_cipher_with_numeric_key
    assert_raises ArgumentError do
      Cipher.new('12345')
    end
  end

  def test_cipher_with_empty_key
    assert_raises ArgumentError do
      Cipher.new('')
    end
  end
end

class SubstitutionCipherTest < Minitest::Test
  def setup
    @key = 'abcdefghij'
    @cipher = Cipher.new(@key)
  end

  def test_cipher_key_is_as_submitted
    assert_equal(@cipher.key, @key)
  end

  def test_cipher_encode
    plaintext = 'aaaaaaaaaa'
    ciphertext = 'abcdefghij'
    assert_equal(ciphertext, @cipher.encode(plaintext))
  end

  def test_cipher_decode
    plaintext = 'aaaaaaaaaa'
    ciphertext = 'abcdefghij'
    assert_equal(plaintext, @cipher.decode(ciphertext))
  end

  def test_cipher_reversible
    plaintext = 'abcdefghij'
    assert_equal(plaintext, @cipher.decode(@cipher.encode(plaintext)))
  end

  def test_double_shift_encode
    plaintext = 'iamapandabear'
    ciphertext = 'qayaeaagaciai'
    assert_equal(ciphertext, Cipher.new('iamapandabear').encode(plaintext))
  end

  def test_cipher_encode_wrap
    plaintext = 'zzzzzzzzzz'
    ciphertext = 'zabcdefghi'
    assert_equal(ciphertext, @cipher.encode(plaintext))
  end
end

class PseudoShiftCipherTest < Minitest::Test
  def setup
    @cipher = Cipher.new('dddddddddd')
  end

  def test_cipher_encode
    plaintext = 'aaaaaaaaaa'
    ciphertext = 'dddddddddd'
    assert_equal(ciphertext, @cipher.encode(plaintext))
  end

  def test_cipher_decode
    plaintext = 'aaaaaaaaaa'
    ciphertext = 'dddddddddd'
    assert_equal(plaintext, @cipher.decode(ciphertext))
  end

  def test_cipher_reversible
    plaintext = 'abcdefghij'
    assert_equal(plaintext, @cipher.decode(@cipher.encode(plaintext)))
  end
end
