class C
  def self.inherited(subclass)
    super
    puts "#{self} just got subclassed by #{subclass} and find attributes in #{subclass}.rb."
    subclass.class_eval('attr_accessor :added_accessor')    
  end

end

puts '--- Inherit D class from C'
class D < C
end

c = C.new
# c.added_accessor = 10 # undefined method `added_accessor=' for #<C:0x000001f5fc59c178> (NoMethodError)
puts '--- Create D class instance'
d = D.new
d.added_accessor = 'I am Invinsible Accessor!!!'
puts d.added_accessor
