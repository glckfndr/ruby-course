class Mymain
    require '../class123'
    require '../layer1/l1'
    require '../layer1/layer2/l1_l2'
    require '../class_tasks'
  
    extend Validation
  
    p length_range?('first_name', 1, 3)
  
    @clds1 = Class123.new

    def clds1
      p  @clds1
    end


    L1.new
    L1L2.new
end

#puts Mymain.clds1
p Mymain.class_variables
p Mymain.instance_variables
mymain = Mymain.new
p mymain.instance_variables
mymain.clds1
