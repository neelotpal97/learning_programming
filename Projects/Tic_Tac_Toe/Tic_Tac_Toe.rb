#Tic_Tac_Toe

class TicTacToe
	def initialize
	end

	#This method is ofr displaying the board!
	def display_board(user_hash)
		print "\t#{user_hash[0]}|#{user_hash[1]}|#{user_hash[2]}"
		print "\n"
		print "\t" + "-"*5 + "\n"
		print "\t#{user_hash[3]}|#{user_hash[4]}|#{user_hash[5]}"
		print "\n"
		print "\t" + "-"*5 + "\n"
		print "\t#{user_hash[6]}|#{user_hash[7]}|#{user_hash[8]}"
		print "\n"
		print "\t" + "-"*5 + "\n"
	end
end


user_hash = {
	0 => 1,
	1 => 2,
	2 => 3,
	3 => 4,
	4 => 5,
	5 => 6,
	6 => 7,
	7 => 8,
	8 => 9
}

start_game = TicTacToe.new
start_game.display_board(user_hash)