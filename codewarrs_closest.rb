str1 = "456899 50 11992 176 272293 163 389128 96 290193 85 52"
str1 = "239382 162 254765 182 485944 134 468751 62 49780 108 54"
str1 = "89998 187 126159 175 338292 89 39962 145 394230 167 1"
def closest(strng)
  return [] if strng.empty?
  res = []
  strng.split().each_with_index {|val, index| res.append [ val.chars.inject(0) {|acc, x| acc + x.to_i}, index, val.to_i] }
  res.sort_by! {|x| x[0]}
  
  min = res[1][0] - res[0][0]
  
  a = res[0]
  b = res[1]
  for i in (2...res.size)
    if (res[i][0] - res[i-1][0]) < min
      
      min = res[i][0] - res[i - 1][0]
      b = res[i]
      a = res[i-1]
    end
  end
  [a,b]
  
end

p closest(str1)