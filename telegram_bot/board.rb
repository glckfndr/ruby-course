# Define a class for the board
class Board
  # Initialize the board with an array of 9 empty strings
  def initialize(printer)
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @printer = printer
  end

  # Display the board with numbers for empty squares
  def display
    @printer.call "\n"
    (0..8).step(3) do |i|
      @printer.call " #{@board[i]} | #{@board[i + 1]} | #{@board[i + 2]} "
      @printer.call '-----------'
    end
    @printer.call "\n"
  end

  # Check if a cell with index is free
  def free?(index)
    (1..9).include?(@board[index])
  end

  def []=(index, value)
    @board[index] = value
  end

  def [](index)
    @board[index]
  end

  # Check if the board is full
  def full?
    @board.all? { |cell| !(1..9).include?(cell) }
  end
end
