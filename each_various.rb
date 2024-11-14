[1, 2, 3].reverse_each { |e| puts e * 10 }

letters = { 'a' => 'ay', 'b' => 'bee', 'c' => 'see' }
letters.each_with_index { |(key, value), i| puts "#{key},  #{value} , #{i}" }

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each_slice(3) { |slice| p slice }

array.each_cons(3) { |cons| p cons }
