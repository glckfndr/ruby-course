sum_all = -> (*nums) { nums.reduce(:+) }
puts sum_all.curry.(1,2,3)

sum_at_least_four = sum_all.curry(4)
sum1 = sum_at_least_four.(3,4)

sum2 = sum1.(5)

#puts sum3 = sum2.(7)
puts sum2.call(7)
