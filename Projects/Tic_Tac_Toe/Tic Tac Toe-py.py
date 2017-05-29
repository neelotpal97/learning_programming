# TIC TAC TOE:
"""
 7|8|9
-------
 4|5|6
-------
 1|2|3
 """
print "      TIC-TAC-TOE\n"

def display_board(moves):
	print "\t" + moves[7] + "|" + moves[8] + "|" + moves[9]
	print "       " + "-------"
	print "\t" + moves[4] + "|" + moves[5] + "|" + moves[6]
	print "       " + "-------"
	print "\t" + moves[1] + "|" + moves[2] + "|" + moves[3]
	print "\n"
	
def player1_turn(moves):
	move = raw_input("Player 1 : Your Move : ==>")
	moves[int(move)] = 'X'
	display_board(moves)
	return moves

def player2_turn(moves):
	move = raw_input("Player 2 : Your Move : ==>")
	moves[int(move)] = 'O'
	display_board(moves)
	return moves

def draw(user_moves):
	for key, value in user_moves.iteritems():
		if value == ' ':
			return False
	return True

def win_player1(user_moves):
	if user_moves[1] == "X" and user_moves[2] == "X" and user_moves[3] == "X":
		return True
	elif user_moves[4] == "X" and user_moves[5] == "X" and user_moves[6] == "X":
		return True
	elif user_moves[7] == "X" and user_moves[8] == "X" and user_moves[9] == "X":
		return True
	if user_moves[7] == "X" and user_moves[4] == "X" and user_moves[1] == "X":
		return True
	elif user_moves[8] == "X" and user_moves[5] == "X" and user_moves[2] == "X":
		return True
	elif user_moves[9] == "X" and user_moves[6] == "X" and user_moves[3] == "X":
		return True
	elif user_moves[7] == "X" and user_moves[5] == "X" and user_moves[3] == "X":
		return True
	elif user_moves[9] == "X" and user_moves[5] == "X" and user_moves[1] == "X":
		return True
	else:
		return False

def win_player2(user_moves):
	if user_moves[1] == "O" and user_moves[2] == "O" and user_moves[3] == "O":
		return True
	elif user_moves[4] == "O" and user_moves[5] == "O" and user_moves[6] == "O":
		return True
	elif user_moves[7] == "O" and user_moves[8] == "O" and user_moves[9] == "O":
		return True
	if user_moves[7] == "O" and user_moves[4] == "O" and user_moves[1] == "O":
		return True
	elif user_moves[8] == "O" and user_moves[5] == "O" and user_moves[2] == "O":
		return True
	elif user_moves[9] == "O" and user_moves[6] == "O" and user_moves[3] == "O":
		return True
	elif user_moves[7] == "O" and user_moves[5] == "O" and user_moves[3] == "O":
		return True
	elif user_moves[9] == "O" and user_moves[5] == "O" and user_moves[1] == "O":
		return True
	else:
		return False
def start_game():
	user_moves = {1:' ',2:' ',3:' ',4:' ',5:' ',6:' ',7:' ',8:' ',9:' '}
	guide = {1:'1',2:'2',3:'3',4:'4',5:'5',6:'6',7:'7',8:'8',9:'9'}
	display_board(guide)
	user_moves = player1_turn(user_moves)
	user_moves = player2_turn(user_moves)
	while draw(user_moves)!= True:
		user_moves = player1_turn(user_moves)
		if win_player1(user_moves):
			print "Player 1 won!"
			break
		if draw(user_moves):
			print "DRAW!"
			break
		user_moves = player2_turn(user_moves)
		if win_player2(user_moves):
			print "Player 2 won!"
			break
		if draw(user_moves):
			print "DRAW!"
			break
	reset = raw_input("Wanna play again? (Y/N) : ")
	if reset == "Y" or reset == "y":
		start_game()


start_game()