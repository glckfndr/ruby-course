# Write your code for the 'Binary Search Tree' exercise in this file. Make the tests in
# `binary_search_tree_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/binary-search-tree` directory.

class Bst
  attr_reader :data, :left, :right
  

  def initialize(n)
    @data = n
    @left = nil
    @right = nil
  end

  def insert(value)
    if value <= @data
      @left ? @left.insert(value) : @left = Bst.new(value)
    else
      @right ? @right.insert(value) : @right = Bst.new(value)
    end
  end

  def each(&block)
    return to_enum(:each) unless block_given?

    @left.each(&block) if @left
    block.call(@data)
    @right.each(&block) if @right
  end
end
