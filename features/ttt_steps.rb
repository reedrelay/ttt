class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end

Given /^I am not playing$/ do
end

When /^I start a game$/ do
  game = TicTacToe::Game.new(output)
  game.start
end

Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end

Given /^a game has started$/ do
  game = TicTacToe::Game.new(output)
  game.start
end

When /^I choose player "(.*?)"$/ do |player|
  game.choose_player(player)
end
