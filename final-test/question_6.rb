class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  private

  def full_name
    "#{@first_name} #{@last_name}"
  end
end

class Student < Person
  def full_name
    # "My name is #{super.full_name}"
    "My name is #{super}"
  end
end

print (Student.new 'Oleh', 'Bulan').full_name
