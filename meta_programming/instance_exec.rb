class KlassWithSecret
  def initialize
    @secret = 99
  end
end
k = KlassWithSecret.new
puts k.instance_exec(5) { |x| @secret + x }

class Person
  code = proc { |greetings|
    puts greetings
    puts self
  }

  define_method :name do
    self.class.instance_exec 'Good morning', &code
  end
end

class Developer < Person
end

Person.new.name #=> Good morning Person
Developer.new.name #=> Good morning Developer
