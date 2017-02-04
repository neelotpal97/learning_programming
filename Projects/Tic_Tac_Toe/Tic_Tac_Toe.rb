#Tic_Tac_Toe
class TicTacToe

	#Class initialization method
	#--------------------------------------------------------------
	def initialize
	end
	#--------------------------------------------------------------

	#This method is of displaying the board!
	#--------------------------------------------------------------
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
	#--------------------------------------------------------------

	#This is method is to make changes on the board!
	#--------------------------------------------------------------
	def change_board(user_hash,move,player)
		if player == 1
			user_hash[move] = "X"
		elsif player == 2
			user_hash[move] = "O"
		end
		display_board(user_hash)

	end
	#--------------------------------------------------------------

	#Will make a player array
	#--------------------------------------------------------------
	def player_1_array(user_hash)
		player_1 = []
		user_hash.each do |position,value|
			if value == "X"
				player_1 << position
			end
		end
		return player_1
	end
	#--------------------------------------------------------------

	#Will make a player array
	#--------------------------------------------------------------
	def player_2_array(user_hash)
		player_1 = []
		user_hash.each do |position,value|
			if value == "0"
				player_1 << position
			end
		end
		return player_1
	end

	#This method determines wether a player has won!
	#--------------------------------------------------------------	
	def did_anyone_win?(array)
		if (array.include?(0) and array.include?(4) and array.include?(8))
			return true
		elsif (array.include?(1) and array.include?(4) and array.include?(7))
			return true
		elsif (array.include?(2) and array.include?(4) and array.include?(6))
			return true
		elsif (array.include?(3) and array.include?(4) and array.include?(5))
			return true
		else
			return false
		end
	end
	#--------------------------------------------------------------

	def start_game(user_hash)
		flag = 0
		puts "Welcome, lets play Tic Tac Toe:"
		puts "This is put board..."
		display_board(user_hash)
		until (flag == 1)
			print "Player 1 : "
			player_1_move = gets.chomp.to_i
			change_board(user_hash,player_1_move,1)
			if did_anyone_win?(player_1_array(user_hash)) == true
				puts "Player 1 win!"
				flag = 1
				break
			end
			print "Player 2 : "
			player_2_move = gets.chomp.to_i
			change_board(user_hash,player_2_move,2)
			if did_anyone_win?(player_2_array(user_hash)) == true
				puts "Player 2 win!"
				flag = 1
				break
			end
		end

		
	end

	



	
end

user_hash = {
	0 => " ",
	1 => " ",
	2 => " ",
	3 => " ",
	4 => " ",
	5 => " ",
	6 => " ",
	7 => " ",
	8 => " "
}
user_hash_layout = {
	0 => "0",
	1 => "1",
	2 => "2",
	3 => "3",
	4 => "4",
	5 => "5",
	6 => "6",
	7 => "7",
	8 => "8"
}

start_game = TicTacToe.new
start_game.display_board(user_hash_layout)
start_game.start_game(user_hash)
