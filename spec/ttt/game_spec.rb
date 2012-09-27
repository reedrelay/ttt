require 'spec_helper'

module TicTacToe
  describe Game do
    describe "#start" do
      it "sends a welcome message" do
        output = double('output').as_null_object
        game = Game.new(output)

        output.should_receive(:puts).with('Welcome to Tic-Tac-Toe.')

        game.start
      end

      it "prompts for choice of X or O" do
        output = double('output').as_null_object
        game = Game.new(output)

        output.should_receive(:puts).with('Would you like to play X or O?:')

        game.start
      end
    end
  end
end
