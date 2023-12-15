x = 0
t1 = Thread.new do
  sleep(0.2)
  1.upto(10000) do
    x += 1
  end
end
t2 = Thread.new do
  sleep(0.2)
  1.upto(10000) do
    x += 1
  end
end
t1.join
t2.join
puts x
