def expanded_form(num)
  res = []
  div = 10
  while(num > 0)
    #p num
    res.append(num % div)
    num /= div  
  end

  res1 = []
  res.each_with_index {|x, ind| res1.append(x  * 10**ind)}
  res1.filter{|x| x > 0}.reverse.join(" + ")
end

p expanded_form(70304)