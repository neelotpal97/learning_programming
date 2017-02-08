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
			if value == "O"
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
		elsif (array.include?(8) and array.include?(4) and array.include?(0))
			return true
		elsif (array.include?(0) and array.include?(3) and array.include?(6))
			return true
		elsif (array.include?(1) and array.include?(4) and array.include?(7))
			return true
		elsif (array.include?(2) and array.include?(5) and array.include?(8))
			return true
		elsif (array.include?(0) and array.include?(1) and array.include?(2))
			return true
		elsif (array.include?(3) and array.include?(4) and array.include?(5))
			return true
		elsif (array.include?(6) and array.include?(7) and array.include?(8))
			return true
		else
			return false
		end
	end
	#--------------------------------------------------------------

	#To check wether the player wants to play more
	#--------------------------------------------------------------	
	def play_more?
		print "Do you want to play more?(Y/N) : "
		choice = gets.chomp
		if choice == "Y"
			puts "-" * 20
			game_reset
			return true
		else
			return false
		end
		
	end
	#--------------------------------------------------------------	

	#Condition to check wether the condition for draw is satisfied
	#--------------------------------------------------------------	
	def draw_condition(user_hash)
		user_hash.each do |x,y|
			if user_hash[x] == " "
				return false
			end
		end
	end
	#--------------------------------------------------------------	
	
	#To reset the game
	#--------------------------------------------------------------	
	def game_reset
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
		start_game(user_hash)
	end
	#--------------------------------------------------------------	

	#The game begins here
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
				if did_anyone_win?(player_1_array(user_hash)) == true and draw_condition(user_hash) == false
					puts "Player 1 win!"
					flag = 1
					break
				end
				if draw_condition(user_hash) 
					puts "DRAW!"
					break
				end
				print "Player 2 : "
				player_2_move = gets.chomp.to_i
				change_board(user_hash,player_2_move,2)
				if did_anyone_win?(player_2_array(user_hash)) == true and draw_condition(user_hash) == false
					puts "Player 2 win!"
					flag = 1
					break
				end
				if draw_condition(user_hash) 
					puts "DRAW!"
					break
				end
			end
			play_more?
	end
	#--------------------------------------------------------------	
end
#--------------------------------------------------------------	
#--------------------------------------------------------------	
#--------------------------------------------------------------	

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

start_game = TicTacToe.new    #Creating an instance
start_game.display_board(user_hash_layout)
start_game.start_game(user_hash)