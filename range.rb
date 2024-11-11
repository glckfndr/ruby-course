class PowerOfTwo
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def <=>(other)
    @value <=> other.value
  end

  def succ
    PowerOfTwo.new(@value + @value)
  end

  def to_s
    @value.to_s
  end
end
p1 = PowerOfTwo.new(4)
p2 = PowerOfTwo.new(32)
p3 = PowerOfTwo.new(8)
puts (p1..p2).to_a
puts (p1..p2).begin
puts (p1..p2).cover? p3
puts (p1..p2).include?(p1)
