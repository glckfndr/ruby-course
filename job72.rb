lambda1 = lambda {|x| x.to_s.length > 5? 
    "Недопустима кількість розрядів. Число повинно бути не більше, ніж 5-розрядним":  x.to_s.length}

p lambda1.call(123456)

