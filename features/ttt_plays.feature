Feature: player makes a play

	 As a player
	 I want to make a move
	 So that I can play the game

	 Scenario:
		Given a game has started
		And I choose player "X"
		When I play "a"
		Then the stdout should include 
		"""
		X  
		 O 
		   

		The board reflects your move and the computer move.
		
		Where would you like to play your X?:		
		abc   The board diagram at left shows
        	def   where your choice will go
        	ghi   on the grid.
		"""
        