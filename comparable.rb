# Use Comparable
class Bid
  include Comparable
  attr_accessor :estimate

  def <=>(other)
    if @estimate < other.estimate
      -1
    elsif @estimate > other.estimate
      1
    else
      0
    end
  end
end

bid1 = Bid.new
bid1.estimate = 2
bid2 = Bid.new
bid2.estimate = 1
puts bid1 > bid2
puts bid1 < bid2
puts bid1 >= bid2
puts bid1 <= bid2
puts bid1 == bid2
puts bid1 != bid2
