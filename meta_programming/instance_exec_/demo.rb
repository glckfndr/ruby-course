require_relative 'main'
album = Album.new
group = Group.new

puts album.public_methods false
puts "=" * 20
puts group.public_methods false
