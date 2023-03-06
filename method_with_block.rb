class Page

  def initialize(number)
    @number = number
  end

  def show_page
   # yield
    yield @number
  end

  def show_number
    puts @number
  end
end

page = Page.new 10
# page.show_page {puts "Page #{@number}"}
#page.show_page {|x| puts "Page #{x}"}
page.show_page do |x|
  x = x * x 
  puts "Page #{x}"
end
page.show_number
