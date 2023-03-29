class Person
  PEOPLE = []
  attr_reader :name, :hobbies, :friends

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def add_hobby(hobby)
    @hobbies << hobby
  end

  def add_friend(friend)
    @friends << friend
  end

  def self.method_missing(m, *args)
    method = m.to_s
    if method.start_with?('all_with_')
      attr = method[9..]
      if Person.public_method_defined?(attr)
        PEOPLE.find_all do |person|
          puts "#{person.name} is into #{args[0]}."  if person.send(attr).include?(args[0])
        end
      else
        raise ArgumentError, "Can't find #{attr}"
      end
    else
      super
    end
  end
end

e = Person.new('Eric B.')
r = Person.new('Rakim')
e.add_friend(r)
e.add_hobby('cycling')
r.add_hobby('drums')
puts Person.all_with_hobbies('cycling')
puts Person.all_with_hobbies('drums')