class C
  def talk
    puts "Hi from original class #{self.class.name}!"
  end
end

module M
  def talk
    puts "Hello from module M in class #{self.class.name}!"
  end
end

module P
  def talk
    puts "Hello from module P in class #{self.class.name}!"
  end
end

c = C.new
c.talk
class << c
  include M
end
c.talk

c = C.new

class << c
  include M
  p ancestors
end

class C
  #prepend P
  include P
end

class << c
  p ancestors
end