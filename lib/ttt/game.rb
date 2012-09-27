module TicTacToe
  class Game
    def initialize(output)
      @output = output
    end

    def start
      @output.puts 'Welcome to Tic-Tac-Toe.'
      @output.puts 'Would you like to play X or O?:'
    end
  end
end
