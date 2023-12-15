class PlayerAi < Player
  def initialize(name, symbol, board)
    super
    @enemy_symbol = 'X'
  end

  def cell_number
    print "#{@name}, cell number to place my #{@symbol}: "
    @cell = next_step
    print "#{@cell + 1}\n"
    @cell
  end

  def random_strategy
    loop do
      next_cell = Random.rand(0..8)
      return next_cell if @board.free?(next_cell)
    end
  end

  def count_board?(combo, num)
    num == combo.count { |ind| @board[ind] == @symbol }
  end

  def enemy_win?(combo)
    2 == combo.count { |ind| @board[ind] == @enemy_symbol }
  end

  def no_enemy?(combo)
    0 == combo.count { |ind| @board[ind] == @enemy_symbol }
  end

  def victory_close
    @@victory_combo.each do |combo|
      next unless count_board?(combo, 2)

      ind = combo.index { |x| @board[x] != @symbol }
      return combo[ind] if @board.free?(combo[ind])
    end
    nil
  end

  def enemy_close
    @@victory_combo.each do |combo|
      next unless enemy_win?(combo)

      ind = combo.index { |x| @board[x] != @enemy_symbol }
      return combo[ind] if @board.free?(combo[ind])
    end
    nil
  end

  def free_hunter
    @@victory_combo.each do |combo|
      next unless count_board?(combo, 1) && no_enemy?(combo)

      ind = combo.index { |i| @board[i] == @symbol }
      loop do
        i = Random.rand(0..2)
        return combo[i] if i != ind
      end
    end
    nil
  end

  def next_step
    %i[victory_close
       enemy_close
       free_hunter].each do |strategy|
      res = method(strategy).call
      return res unless res.nil?
    end

    random_strategy
  end
end
