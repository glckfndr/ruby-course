=begin
Write your code for the 'List Ops' exercise in this file. Make the tests in
`list_ops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/list-ops` directory.
=end

module ListOps

  def self.arrays(arr)
    arr.length
  end

  def self.reverser(arr)
    arr.reverse
  end

  def self.concatter(arr1, arr2)
    [*arr1, *arr2]
  end

  def self.mapper(arr)
    if block_given?
    arr.map{|el| yield(el)}
    else
      arr.map
    end

  end

  def self.filterer(arr, &func)
    if block_given?
      arr.filter {|el| func.call(el)}
    else
      arr.filter
    end
  end

  def self.sum_reducer(arr)
    arr.reduce(0, :+)
  end

  def self.factorial_reducer(arr)
    arr.reduce(1, :*)
  end

end
p ListOps.mapper([1, 2, 3, 4, 5]) { |n| n + 1 }
p ListOps.mapper([])
p ListOps.filterer([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], &:odd?)
p ListOps.filterer([])
p ListOps.factorial_reducer([1,2,3,4,5])
