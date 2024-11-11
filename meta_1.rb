class A
  def my_name
    puts "-- Class name: #{self.class.name}"
  end

  class << self
    def create_intance
      new
    end
  end

  create_intance.my_name
end

class B < A
end
