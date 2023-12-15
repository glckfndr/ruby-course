# Define a class for the players
class Player
  # Define the winning combinations
  @@victory_combo = [
    [0, 1, 2], # Top row
    [3, 4, 5], # Middle row
    [6, 7, 8], # Bottom row
    [0, 3, 6], # Left column
    [1, 4, 7], # Middle column
    [2, 5, 8], # Right column
    [0, 4, 8], # Left diagonal
    [2, 4, 6]  # Right diagonal
  ].freeze
  attr_reader :name, :symbol

  # Initialize the player with a name and a symbol
  def initialize(name, symbol, board)
    @board = board
    @name = name
    @symbol = symbol
  end

  def move(index)
    @board[index] = @symbol
  end

  # Check if a player has won
  def win?
    # Check if any of the winning combinations are occupied by the same symbol
    @@victory_combo.any? do |combo|
      combo.all? { |index| @board[index] == @symbol }
    end
  end

  def cell_number
    print "#{@name}, enter a free cell number to place your #{@symbol}: "
    gets.chomp.to_i - 1
  end
end
