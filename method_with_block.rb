class Page

  def initialize(number)
    @number = number
  end

  def show_page
    y = 7
    @number = (yield @number, y) * 2
  end

  def show_number
    puts @number
  end
end

page = Page.new 11

page.show_page do |x, y|
  x = x * x + y
  puts "Page #{x} - #{y}"
  x
end
page.show_number
