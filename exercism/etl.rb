# Write your code for the 'ETL' exercise in this file. Make the tests in
# `etl_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/etl` directory.

module ETL
  def self.transform(old)
    res = old.map { |k, v| [v.map { |x| [x.downcase, k] }] }.flatten(2).to_h
  end
end
