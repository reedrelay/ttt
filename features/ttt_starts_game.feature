Feature: player starts game

	 As a player
	 I want to start a game
	 So that I can play the game

	 Scenario: start game
	 	   Given I am not playing
		   When I start a game
		   Then I should see "Welcome to Tic-Tac-Toe."
		   And I should see "Would you like to play X or O?:"