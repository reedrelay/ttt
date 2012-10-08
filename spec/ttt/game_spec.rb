require 'spec_helper'

module TicTacToe
  describe Game do
    describe "#start" do
        let(:output) { double('output').as_null_object }
        let(:game)   { Game.new(output) }

      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to Tic-Tac-Toe.')
        game.start
      end

      it "prompts for choice of X or O" do
        output.should_receive(:puts).with('Would you like to play X or O?:')
        game.start
      end

      it "player chooses X" do
        output.should_receive(:puts).with('Where would you like to play your X?:')
        output.should_receive(:puts).with('abc   The board diagram at left shows')
        output.should_receive(:puts).with('def   where your choice will go')
        output.should_receive(:puts).with('ghi   on the grid.')
        
        #game.start
        game.set_player('X')

      end

      it "player X makes move a" do
        #game.start
        #game.set_player('X')
        #game.make_move('a')
      end

                                          
    end
  end
end
