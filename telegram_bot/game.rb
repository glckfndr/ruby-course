require_relative 'player'
require_relative 'player_ai'
require_relative 'board'

# Define a class for the game logic
class Game
  # Initialize the game with a board and two players
  def initialize(printer)
    @printer = printer
    @board = Board.new(printer)
    @x_player = Player.new('Player X', 'X', @board)
    # @o_player = Player.new('Player O', 'O', @board)
    @o_player = PlayerAi.new('PlayerAi O', 'O', @board)
    @current_player = @x_player
  end

  # Play the game until there is a winner or a tie
  def play
    @printer.call 'Welcome to Tic-Tac-Toe!'
    @board.display
    loop do
      move_player
      @board.display

      if @current_player.win?
        @printer.call "#{@current_player.name} wins!"
        break
      elsif @board.full?
        @printer.call "It's a tie!"
        break
      end
      switch_player
    end

    @printer.call 'Game is over!'
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
        @printer.call 'Invalid move. Please try again.'
      end
    end
  end
end
