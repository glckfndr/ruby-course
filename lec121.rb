class Article
 def initialize(title, authors)
   @title = title
   @authors = authors
 end
 def to_s
   "#{@title}, [#{@authors.join(', ')}]"
 end
end

class Book < Article
  def initialize(title, authors)
    @title = title
    @authors = authors
  end
end

book = Book.new('book', ['auth'])
puts book