module M1
  def show; puts " --> M1";   end 
end

module M2
  def show; puts " --> M2";  end 
end

class A
  include M1
  prepend M2
  def show;  puts " --> A" ;  end
end
a = A.new 
a.show

class << a
  def show;  puts " --> singleton A";  super; end
end
a.show