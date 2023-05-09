def diof(x, n)
  (x**2 - n)**0.5/2
end

def sol_equa(n)
  res = []
  start = (n ** 0.5).floor
  start = start + 1 if start != (n ** 0.5)
  
  n.downto(start) do |x|
    y = diof(x,n)
    #p " {-- #{x}, ---- #{y} #{y.round == y}}"
    yr = y.round
    res.append([x, yr]) if yr == y 
            
    x += 1   
  end
  res
end

p sol_equa 16
#p sol_equa 90002

