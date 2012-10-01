Feature: player chooses O

	 As a player
	 I want to choose O
	 So that I can have the second move

	 Scenario:
		Given a game has started
		When I choose player "O"
		Then I should see "The computer player will go first, playing X."
		And I should see "Where would you like to play your O?:"