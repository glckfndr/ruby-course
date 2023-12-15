class Person
  def initialize(name, age, gender)
    @name = name
    self.set_age age
    self.set_gender gender
  end

  private
  def set_age age
    @age = age
  end

  protected
  def set_gender gender
    @gender = gender
  end
end

p Person.new "oleh", 35, "M"
