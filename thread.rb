count1 = 1
counter1 = Thread.new do
  100_000_000.times do
    count1 += 2

  end
end

counter2 = Thread.new do
  100_000_000.times do
    count1 -= 2

  end
end

counter1.join
counter2.join
puts ">>>>>>>>>> count1 :  #{count1} ---------"
