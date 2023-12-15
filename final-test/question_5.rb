class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    self.set_age age
    self.set_gender gender
  end

  protected

  def set_age(age)
    @age = age
  end

  private

  def set_gender(gender)
    @gender = gender
  end
end

p = Person.new 'Oleh', 26, 'male'
p.name = 'Gal'
# p.set_age 26
p.set_gender 'female'
