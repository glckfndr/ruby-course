a = [1,2,4]
public
def quad_sum(a, b)
  a + b**2
end
#p quad_sum 2,3

 p a.reduce(0,:quad_sum)

