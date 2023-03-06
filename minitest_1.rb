require "minitest/autorun"
def add(a, b)
  a + b
end

class FirstStep < Minitest::Test
  def test_add
    assert_equal 1, add(1, 2)
  end
end