public

def talk
  puts 'Hello'
end
puts "Trying 'talk' with no receiver..."
talk
puts "Trying 'talk' with an explicit receiver..."
obj = Object.new
obj.talk
# puts Object.private_instance_methods.sort
puts Object.public_instance_methods.sort
