module TicTacToe
  class Game
    def initialize(output)
      @output = output
      @board = TicTacToe::Board.new(@output)
      @opponent = TicTacToe::Opponent.new(@output)
    end

    def start
      @output.puts 'Welcome to Tic-Tac-Toe.'
      @output.puts 'Would you like to play X or O?:'
    end

    def set_player(player)
      @player = player
      
      move_usage(@player)
      @opponent.player(other_player(@player))
    end

    def other_player(player)
      if player == 'X'
        return 'O'
      elsif
        return 'X'
      end
    end

    def player_goes_first
      if @player == 'X'
        return true
      end
    end

    def move_usage(player)
      @output.puts 'Where would you like to play your #{player} ?:'
      @output.puts 'abc   The board diagram at left shows'
      @output.puts 'def   where your choice will go'
      @output.puts 'ghi   on the grid.'
    end

    def make_move(move)
      @board.make_move(move, @player)
    end

    def show_board
      @board.show
    end

    def show_end_state
      @board.show
    end

    def over?

      if won? == ' '
        if draw?
          return true
        end
      end

      return false

    end

    def won?
      
      for i in 0..2
        r = @board.row(i)
        matches, player = score_sequence(r)
        if matches == 3
            return player
        end
      end

      for i in 0..2
        c = @board.column(i)
        matches, player = score_sequence(r)
        if matches == 3
            return player
        end
      end

      for i in 0..1
        d = @board.diagonal(i)
        matches, player = score_sequence(r)
        if matches == 3
            return player
        end
      end

      return ' '

    end

    def draw?
      !game_open?
    end

    def game_open?
      for i in 0..2
        r = @board.row(i)
        if sequence_open?(r) == ' '
          return true
        end
      end

      for i in 0..2
        c = @board.column(i)
        if sequence_open?(r) == ' '
          return true
        end
      end

      for i in 0..1
        d = @board.diagonal(i)
        if sequence_open?(d) == ' '
          return true
        end
      end
      
        return false 
    end

    def sequence_open?(seq)
      for i in 0..2
        if seq[i] == ' '
          return ' '
        end

        return seq[0]
      end

    def score_sequence(seq)

      if seq[0] != ' '
        if seq[0] == seq[1]
          if seq[1] == seq[2]
            return 3, seq[0]
          elsif
            return 2, seq[0]
          end
        elsif seq[1] != ' '
          if seq[1] == seq[2]
            return 2, seq[1]
          end
        end
      elsif seq[1] != ' '
        if seq[1] == seq[2]
          return 2, seq[1]
        end
      end
        return 1, seq[0]
      end
    end

  end

  class Board
    def initialize(output)
      
      @output = output
      @input_map = {
        'a' => 0,
        'b' => 1,
        'c' => 2,
        'd' => 3,
        'e' => 4,
        'f' => 5,
        'g' => 6,
        'h' => 7,
        'i' => 8
      }
      
      
      @grid = []
      
      (0..8).each {|i| @grid[i] = ' '}
      
    end
    
    def make_move(user_move, player)
      @grid[@input_map[user_move]] = player
    end 

    def show
      @output.puts @grid[0..2]
      @output.puts @grid[3..5]
      @output.puts @grid[6..8]
    end

    def row(n)
      @grid[0+(n*3)..2+(n*3)]
    end

    def row_move(row, element, player)
      @grid[element+row*3] = player
    end
      

    def column(n)
      [@grid[n], @grid[n+3], @grid[n+6]]
    end

    def column_move(column, element, player)
      @grid[element+column*3] = player
    end


    def diagonal(n)
      if n == 0 # top left to bottom right
        [@grid[0], @grid[4], @grid[8]]
      elsif n == 1
        [@grid[6], @grid[4], @grid[2]]
      end
    end

    def diagonal_move(diagonal, element, player)
      if diagonal == 0
          @grid[element*4] = player
      elsif diagonal == 1
          @grid[6-element*2] = player
      end
    end

  end

  class Opponent(output)
    def initialize
      @output = output
    end
    
    def player(player)
      @player = player
      
    end
    
    def move(board)
      @board = board
      
      # first pass, dumb opponent--looks for first opening?
      
      for i in 0..2
        r = @board.row(i)
        for j in 0..2
          if r[j] == ' '
            @board.row_move(i, j, @player)
            return true
          end
        end
      end

      for i in 0..2
        c = @board.column(i)
        for j in 0..2
          if c[j] == ' '
            @board.column_move(i, j, @player)
            return true
          end
        end
      end

      for i in 0..1
        d = @board.diagonal(i)
        for j in 0..2
          if d[j] == ' '
            @board.diagonal_move(i, j, @player)
            return true
          end
        end
      end
      
      # can I win
      # can I block
      # can I advance

      return true
    end
  end
end
