unless indexes(n_array, 0).empty?  # we have zerrors
  ind = last_index(n_array, 0)
  p ind
  n_array.delete_at(ind)
  n_array.insert(0,0)
  from = ind
  to = 0

else

  max_el = n_array.max
  if n_array[0] == max_el  && n_array[1] == n_array.min # max element the first
    n_array.delete_at(0)
    n_array.append(max_el)
    from = 0;
    to = n_array.length - 1
  end 

  min_el = n_array.min
  if last_index(n_array, min_el) < n_array.length - 1
    ind = last_index(n_array, min_el)
    n_array.delete_at(ind)
    n_array.insert(0, min_el)
    from = ind
    to = 0    
  
  end
end