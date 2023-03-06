class A
  private
  def my_name
    puts "my_name -- > private method of A in class #{self.class.name}"   
  end
  public
  def get_name_A
      my_name
  end

  protected
  def get_name_prot
    my_name
  end
end

class B < A
    def metod_in_B
        get_name_prot
    end
end

a = A.new
b = B.new
a.get_name_A
b.get_name_A
#a.get_name_prot
#b.get_name_prot
#b.metod_in_B
