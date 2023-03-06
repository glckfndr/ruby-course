class C

  def initialize(num)
    @number = num
  end

  def talk
    puts "Method-grabbing test! self is #{@number}."
  end
end

c = C.new(112)
meth = c.method(:talk)
meth.call

class D < C
end
d = D.new(1)
unbound = meth.unbind
unbound.bind(d).call