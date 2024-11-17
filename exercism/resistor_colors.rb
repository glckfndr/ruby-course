=begin
Write your code for the 'Resistor Color' exercise in this file. Make the tests in
`resistor_color_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color` directory.
=end
module ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]
  @@color_dic = {
      black: 0,
      brown: 1,
      red: 2,
      orange: 3,
      yellow: 4,
      green: 5,
      blue: 6,
      violet: 7,
      grey: 8,
      white: 9}

  def self.color_code(str)
    @@color_dic[str.to_sym]
  end
end
