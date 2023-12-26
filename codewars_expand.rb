def fact(n)
  return 1 if n == 0
  (1..n).inject(:*)
end

def num(n,k)
 return  1 if k ==  0
  ((n-k + 1)..n).inject(:*)
end

def parse(expr)
  number1 = expr.scan(/(?<=\()(-?\w+)(?=[+-])/)
  puts number1
    number1 = number1[0][0]
    digit = number1.scan(/-?\d+/)[0]
    if digit.nil?
      
      if number1[0] == "-"
          digit = "-1"
          variable = number1.gsub("-","") 
      else
        digit = "1"
        variable = number1
      end
      
    else
    variable = number1.gsub(digit, "")    
  end
  sign = expr.scan(/(?<=[a-zA-Z])([+-])(?=\d)/)[0][0]
  number2 = expr.scan(/\d+(?=\))/)[0].to_i
  power = expr.scan(/(?<=\^)\d+/)[0].to_i
  [ digit.to_i, variable, sign, number2, power]
end

expr = '(-n-0)^5'
res = parse(expr)
p res
n = res[4]
var = res[1]
y = res[0]
b = res[3]
b = -res[3] if res[2] == "-"
acc = ""
 n.downto(0) do |k|
  binom = num(n,k) / fact(k)
  koef = binom * y**k * b**(n-k)
  power = "#{var}^#{k}" if k > 1
  power = "#{var}" if k == 1
  power = 1 if k == 0

  x = "#{koef}#{power}"if koef != 1 && power != 1
  x = "#{power}"if koef == 1
  x = "-#{power}"if koef == -1
  x = "#{koef}"if power == 1 
  if koef != 0
    acc += "+" if k != n && x.to_i > 0
    acc +=   "#{x}" 
  end
end


p "--------------------------------"
p acc
p "--------------------------------"

 