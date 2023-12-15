class Person
  def initialize(f,l)
    @f = f;
    @l = l;
  end
private
  def full_name
    puts @f
    puts @l


  end
end

class Student < Person
  def full_name
    puts super
  end
end

Student.new("qq", "vv").full_name
