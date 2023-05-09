def indexes(arr, num)
  ind_min = []
  arr.each_with_index{|x, k| ind_min.append(k) if x == num}  
  ind_min
end

def swap(data, from, to)
  arr = data.clone
  raise IndexError if from >= arr.length || to >= arr.length
  d = arr.delete_at(from)
  arr.insert(to, d)
  arr.map{|x| x.to_s}.join.to_i  
end


def smallest(n)
  n_array = n.to_s.chars.map{|x| x.to_i}
  min_d = n_array.min
  #max_d = n_array.max
  last = n_array.length - 1
  ind_min = indexes(n_array, min_d)
  #ind_max = indexes(n_array, max_d)
  return [n, 0, 0] if ind_min.length == n_array.length
  return [swap(n_array, last,0), last, 0] if ind_min[0] == last
  min_res = n
  f = 0
  t = 0
  
  for from in 0..last
    for to in 0..last    
      if swap(n_array, from, to) < min_res
        f = from
        t = to
        min_res = swap(n_array, from, to)
      end
    end
  end
  
  return [min_res, f, t]
end

# Example usage:
#p swap([3,2,1] , 2, 0)
p smallest(11111) == [11111, 0, 0]
p smallest(54321) == [15432, 4, 0]
p smallest(14321) == [11432, 4, 0]
p smallest(14320) == [1432, 4, 0]
p smallest(14302) == [1432, 3, 0]
p smallest(204302) == [20432, 4, 0]
p smallest(1214) == [1124, 2, 0]
p smallest(11211) == [11121, 3, 0]
p smallest(54312) 
#p smallest(12345) #== [12345, 0, 0]




