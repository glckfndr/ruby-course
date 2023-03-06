
class Main
  require '../class123'
  require '../layer1/l1'
  require '../layer1/layer2/l1_l2'
  require '../class_tasks'

  extend Validation

p length_range?('first_name', 1, 3)

  Class123.new
  L1.new
  L1L2.new
end

user = User.new('A', 'Ghjhjk')
p user

