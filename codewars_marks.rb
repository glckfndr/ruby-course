def check_exam(arr1,arr2)
  def get_mark(y)
    return 0 if y[1] == ""
    y[0] == y[1] ? 4 : -1  
  end
  res = arr1.zip(arr2).inject{|acc, x| acc += get_mark(x) }  
end
puts check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"])