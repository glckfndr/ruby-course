require 'faker'
fuzzer = lambda {|x| Faker::Name.send(x)}
puts fuzzer['first_name']
puts fuzzer['last_name']
