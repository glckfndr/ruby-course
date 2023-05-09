def smallest(n)
  n_array = n.to_s.chars.map{|x| x.to_i}
  i_max = n_array.length
  puts n
  if n_array[1] == 0
   s = 1
    for i in (2..i_max - 1)
      puts "#{i} ---> #{n_array[i]}"
      if(n_array[i] <= n_array[0])
       s = i
      else
        break
      end
    end
    n_array.insert(s + 1, n_array[0])
    n_array.delete_at(0)
    n_array.delete_at(0)
    
    return [n_array.join.to_i, 0, s]
  end
  
  if n_array[0] == n_array.max && n_array.index(0).nil?
         n_array.append(n_array[0])
         n_array.delete_at(0)
         
         return [n_array.join.to_i, 0, i_max - 1] 
         end
  
  for i in (0..i_max - 2)
       
       d = n_array[(i + 1)..i_max].min
       if d <= n_array[i]
        ind_min = []
        n_array.each_with_index{|x, k| ind_min.append(k) if x == d}
        s = ind_min.last
        n_array.delete_at(s)
        n_array.insert(i, d)
        return  [n_array.join.to_i, s, i]        
       end      
  end
end