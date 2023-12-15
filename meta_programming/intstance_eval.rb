class C
  def initialize
    @x = 1
  end
end
c = C.new
c.instance_eval { puts @x }
c.instance_exec(10) {|x| puts @x * x }
