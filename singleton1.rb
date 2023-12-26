class A
  @@a = 10
  @a = 231

  def self.show1
    puts "From class method @a = #{@a}"
    puts "From class method @@a = #{@@a}"   
  end
end

class << A
  def show2
    puts "From singleton class method @a = #{@a}"
    puts "From singleton class method @@a = #{@@a}" 
  end
end

class  A
  def self.show3
    puts "From added class method @a = #{@a}"
    puts "From added class method @@a = #{@@a}" 
  end
end

A.show1
A.show3
A.show2

