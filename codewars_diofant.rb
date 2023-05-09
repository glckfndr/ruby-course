def sol_equa(n)
    
  upper = (n / 2 + 1).round
  stpx = upper / 12
  stpx = 1 if stpx == 0
    
  stpy = 1
  res = []
  start = (n ** 0.5).round
  
  (0..(upper/2)).step(stpy)  do |y|
    (start..(2*n)).step(stpx) do |x|
      num =  (x - 2 * y) * (x + 2 * y)
      if num > n
        x0 = x
        while(num >= n)
          x0 -= 1
          num =  (x0 - 2 * y) * (x0 + 2 * y)
         # break if num < n 
          if num == n
            res.append([x0, y])
            start = x0
           # stpx = 2
            stpy = 2
            break            
          end          
        end
        break         
      end      
    end
  end
res.reverse
    
end
p sol_equa 90001
#p sol_equa 90002

