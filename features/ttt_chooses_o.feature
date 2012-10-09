Feature: player chooses O

	 As a player
	 I want to choose O
	 So that I can have the second move

	 Scenario:
		Given a game has started
		When I choose player "O"
		Then I should see "The computer player will go first, playing X."
		And I should see "Where would you like to play your O?:"
		And I should see "abc   The board diagram at left shows"
		And I should see "def   where your choice will go"
		And I should see "ghi   on the grid."
