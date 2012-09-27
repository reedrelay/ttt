Feature: player chooses O

	 As a player
	 I want to choose O
	 So that I can have the first move

	 Scenario:
		Given a game has started
		When I choose player "O"
		Then I should see ""
		And I should see "Where would you like to play your O?:"