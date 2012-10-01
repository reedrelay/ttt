module TicTacToe
  class Game
    def initialize(output)
      @output = output
      @board = TicTacToe::Board.new(@output)
      @opponent = TicTacToe::Opponent(@output)
    end

    def start
      @output.puts 'Welcome to Tic-Tac-Toe.'
      @output.puts 'Would you like to play X or O?:'
    end

    def player(player)
      @player = player
      
      move_usage(@player)
      @opponent.player()#ternary? player == 'X' ? 'O' : 'X')
    end

    def move_usage(player)
      @output.puts 'Where would you like to play your #{player}?:'
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
      # has player won, has opponent won (maybe game checks this post moves.)
      # for following, ask board for rows, columns, diagonals?
      # can I win
      # can I block
      # can I advance

      @board
end
