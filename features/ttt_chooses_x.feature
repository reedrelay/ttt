Feature: player chooses X

	 As a player
	 I want to choose X
	 So that I can have the first move

	 Scenario:
		Given a game has started
		When I choose player "X"
Then I should see "Where would you like to play your X?:"
And I should see "abc   The board diagram at left shows"
And I should see "def   where your choice will go"
And I should see "ghi   on the grid."

