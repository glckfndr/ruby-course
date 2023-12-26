# Define a class for the board
class Board
  # Initialize the board with an array of 9 empty strings
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  # Display the board with numbers for empty squares
  def display
    puts "\n"
    (0..8).step(3) do |i|
      puts " #{@board[i]} | #{@board[i + 1]} | #{@board[i + 2]} "
      puts '-----------'
    end
    puts "\n"
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

# Define a class for the players
class Player
  # Define the winning combinations
  @@win_combo = [
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
    @@win_combo.any? do |combo|
      combo.all? { |index| @board[index] == @symbol }
    end
  end

  def cell_number
    print "#{@name}, enter a free cell number to place your #{@symbol}: "
    gets.chomp.to_i - 1
  end
end

# Define a class for the game logic
class Game
  # Initialize the game with a board and two players
  def initialize
    @board = Board.new
    @x_player = Player.new('Player X', 'X', @board)
    @o_player = Player.new('Player O', 'O', @board)
    @current_player = @x_player
  end

  # Play the game until there is a winner or a tie
  def play
    puts 'Welcome to Tic-Tac-Toe!'

    loop do
      @board.display
      move_player
      switch_player

      if @current_player.win?
        puts "#{@current_player.name} wins!"
        break
      elsif @board.full?
        puts "It's a tie!"
        break
      end
    end

    puts 'Game is over!'
  end

  private

  # Switch the current player after each turn
  def switch_player
    @current_player = @current_player == @x_player ? @o_player : @x_player
  end

  # Get a valid move from the current player and place it on the board
  def move_player
    loop do
      cell_number = @current_player.cell_number

      if (0..8).include?(cell_number) && @board.free?(cell_number)
        @current_player.move cell_number
        break
      else
        puts 'Invalid move. Please try again.'
      end
    end
  end
end

game = Game.new
game.play
