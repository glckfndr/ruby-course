class Library
  include Enumerable

  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def each
    @books.each { |book| yield book }
  end
end

class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end
end

library = Library.new
library.add_book(Book.new("Harry Potter", "J.K. Rowling"))
library.add_book(Book.new("To Kill a Mockingbird", "Harper Lee"))
library.add_book(Book.new("The Great Gatsby", "F. Scott Fitzgerald"))

# Now we can use Enumerable methods on the Library class
''
# Iterate over each book
library.each { |book| puts "#{book.title} by #{book.author}" }

# Check if any book has an author named "J.K. Rowling"
has_jk_rowling_book = library.any? { |book| book.author == "J.K. Rowling" }
puts "Has J.K. Rowling book? #{has_jk_rowling_book}"

# Get all the book titles as an array
book_titles = library.map { |book| book.title }
puts "Book titles: #{book_titles.join(', ')}"
