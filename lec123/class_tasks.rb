module Validation
  def length_range?(string, min, max)
    string.length <= max && string.length >= min 
  end
end

class User

  include Validation
  def initialize(first_name, second_name)
    @first_name = ''
    @second_name = ''
    @first_name = first_name if length_range?(first_name, 1, 3)
    @second_name = second_name if length_range?(second_name, 1, 4)
  end
end

user = User.new('A', 'Ghjhjk')
p user