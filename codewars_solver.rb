def u(x)
  u_m = x
  n = 2
  eps = 1
  while(eps > 1.0e-10)
    eps = n * x**n 
    u_m +=  eps
    n += 1
    #puts n
  end
  u_m
end

def up(x)
  u_m = 1
  n = 2
  eps = 1
  while(eps > 1.0e-10)
    eps = n * n * x**(n - 1) 
    u_m +=  eps
    n += 1
  end
  u_m
end


def solve(m)
  dx = 0.3
  x0 = 0.45
  x1 = x0 + dx
  3.times do |x|
    y0 = m - u(x0)
    y1 = m - u(x1) 
    xn = x0 - y0*(x1 - x0)/(y1 - y0)
    x0 = x1
    x1 = xn
    puts x1    
  end
  eps = 1
  while(eps > 1.0e-12)
    x1 = x0 + (m - u(x0))/up(x0)
    eps = (x1 - x0).abs
    x0 = x1
    puts x1
  end 
end

def solve(m)
  #return 0.8 if m > 60
  dx = 0.42
  x0 = 0.49
  x1 = x0 + dx
  while((x1 - x0).abs > 1.0e-8)
    y0 = m - u(x0)
    y1 = m - u(x1) 
    xn = x0 - y0*(x1 - x0)/(y1 - y0)
    x0 = x1
    x1 = xn
  
  end
  puts x1
end

 solve(100.9 )