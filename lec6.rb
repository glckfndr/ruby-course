class MyClass
    attr_accessor :field
  
    #def to_s
    def inspect 
      @field
    end
  
  end
  
  ref = MyClass.new
  ref.field = 'Field'
  p(ref)