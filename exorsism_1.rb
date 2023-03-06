require 'ostruct'
attributes = {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: OpenStruct.new({s: 3, m: 7, l: 8, xl: 4}) }
item = OpenStruct.new(attributes)

puts item.price
#=> Jeremy Walker

puts item.name
#=> Nomadic

# Update the age
puts item.quantity_by_size

