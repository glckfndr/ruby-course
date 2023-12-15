class Animal
  def speak
    puts 'The animal makes a sound.'
  end
end

class Cat < Animal
  def speak
    puts 'Meow!'
  end
end

class Dog < Animal
  def speak
    puts 'Woof!'
  end
end

animals = [Cat.new, Dog.new, Animal.new]

animals.each do |animal|
  animal.speak
end
