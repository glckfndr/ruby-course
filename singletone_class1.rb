str = "I am a string"
#def str.twice
#  self + " " + self
#  end

class << str
  def twice
    self + " " + self
  end
end

puts str.twice
str2 = "I am a string 2"
puts str2.twice