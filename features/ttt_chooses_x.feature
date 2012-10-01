Feature: player chooses X

	 As a player
	 I want to choose X
	 So that I can have the first move

	 Scenario:
		Given a game has started
		When I choose player "X"
		Then the stdout should include
		   """
		   Where would you like to play your X?:"
		   abc   The board diagram at left shows
		   def   where your choice will go
		   ghi   on the grid.
		   """		   