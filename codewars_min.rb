def last_index(arr, num)
  ind_min = []
  arr.each_with_index{|x, k| ind_min.append(k) if x == num}
  ind_min.last
end

def indexes(arr, num)
  ind_min = []
  arr.each_with_index{|x, k| ind_min.append(k) if x == num}  
  ind_min
end

def smallest(n)
  puts n
  n_array = n.to_s.chars.map{|x| x.to_i}
  i_max = n_array.length - 1
  from = 0 
  to = 0

  for i in (0..(i_max - 1))
    
    d = n_array[i..i_max].min
    max_el = n_array[i..i_max].max
    if n_array[i] == max_el  && n_array[i+1] == d # max element the first
      n_array.delete_at(i)
      n_array.append(max_el)
      from = i;
      to = n_array.length - 1
      break
      
    elsif n_array[i + 1] == 0
      
      for s in ((i + 2)..i_max)
        puts "---#{n_array[s]}-----------#{n_array[i]}------"
        if n_array[s] > n_array[i]
          
          from = i
          to = s 
          n_array.insert(to, n_array[from])
          n_array.delete_at(from)
          to -= 1
          break
        end
      
    end
    break
    end  
    
    
    
    
    next if d == n_array[i]
    ind_min = indexes(n_array, d)
    p ind_min
     if ind_min.length > 1 && (ind_min.last - ind_min[-2]) == 1
       from = ind_min.last - 1
     else
      from = ind_min.last
     end
     d = n_array[from]
     n_array.delete_at(from)
     to = i
     n_array.insert(i, d)
     to -= 1 while to > 0 && n_array[to] == n_array[to - 1]
     break
  end  
       
  out = n_array.map{|x| x.to_s}
  if from == 1 && to == 0
    from, to = to, from
    end
  [out.join.to_i, from, to]
end
# 90835335233991877 ! ok
# Expected: [8353352339918779, 0, 16], instead got: [9083533523991877, 0, 10]
#835666400623544227 ! ok
#Expected: [83566640623544227, 7, 0], instead got: [83566640623544227, 8, 0]
#506364048121703613
#Expected: [50636404812173613, 13, 0], instead got: [56364048121703613, 0, 1]
#102837183934632710
#Expected: [10283718393463271, 17, 0], instead got: [12837183934632710, 0, 1]
#512716978783349969
#Expected: [125716978783349969, 0, 2], instead got: [151276978783349969, 4, 0]
#306833035881261282
#Expected: [30683335881261282, 6, 0], instead got: [36833035881261282, 0, 1]
# 60112397317521564
#Expected: [1123697317521564, 0, 5], instead got: [6112397317521564, 0, 1]
res = smallest 60112397317521564
p res
p 1123697317521564 == res[0]

