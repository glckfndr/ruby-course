=begin
Write your code for the 'Book Store' exercise in this file. Make the tests in
`book_store_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/book-store` directory.
=end
module BookStore
  @@dicount = {1 => 0.0, 2 => 0.05, 3 => 0.1, 4 => 0.2, 5 => 0.25}
  @@price = 8.0

  def self.get_sorted(basket)
    bins = basket.tally
    bins.sort_by{|k, v| -v}
  end

  def self.get_n(n, len)
    while n >  len
      n -= 1
    end
    n
  end

  def self.get_combination(n, store_sort)
    n = get_n(n, store_sort.length)
    new_store = []
    to_delete = []
    store_sort.each_with_index do |x, i|
      if i < n
        new_store << [x[0], x[1] -1]
        to_delete << x[0]
      else
        new_store << x
      end
    end
    new_store = new_store.filter{|x| x[1] > 0}
    [new_store, to_delete]
end

def self.calculate_price(basket)
  return 0 if basket.empty?
  store_sort = BookStore.get_sorted(basket)
    min_sum = 1000000

  (2..5).each do |n|
    store_sort = BookStore.get_sorted(basket)
    book_list = []
    loop do
      store, todel   = get_combination(n, store_sort)
      book_list << todel.length
      store_sort = store
      break if store.length <= 1
  end
  sum = book_list.reduce(0){|acc, x| acc + (1 - @@dicount[x]) * x * @@price}
  sum += store_sort.flatten[1] * 8.0 if store_sort.length == 1
    min_sum = [min_sum, sum].min
end
  min_sum
end

end
