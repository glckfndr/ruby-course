=begin
Write your code for the 'Saddle Points' exercise in this file. Make the tests in
`saddle_points_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/saddle-points` directory.
=end

module  Grid
  def self.get_max(row)
    arr = []
    max =row.max
    row.each_with_index do |x, i|
        arr << i if x == max
    end
    arr
  end

  def self.get_min(row)
    arr = []
    return [0] if row.length == 1
    row.each_with_index do |x, i|
      if i == 0
        arr << i if x <= row[i + 1]
      elsif i == row.length - 1
        arr << i if x <= row[i - 1]
      else
        arr << i if x <= row[i + 1] && x <= row[i - 1]
      end
    end
    arr
  end



  def self.saddle_points(input)
  max = []
  input.each_with_index { |row, i|
  get_max(row).each { |j|
          max <<  {"row" => i + 1, "column" => j + 1}}
        }


min = []
  input.transpose.each_with_index { |row, i|
  get_min(row).each { |j|
        min << {"row" => j + 1, "column" => i + 1}}
  }
  min & max

end
end

input =  [[2, 5, 3, 5]] # 0,1 1,1
puts Grid.saddle_points(input).inspect
