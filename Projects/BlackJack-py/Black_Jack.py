# Black Jack: 
"""
This Program is a simple text implementation of the Black Jack game.
The concpets of classes is used to create an object type player.
"""

from random import shuffle 

class Player(object):
	def __init__(self,name,amount = 100):
		print "Welcome and get ready to loose all your money %s" %(name)
		self.amount = amount
		self.name = name

	def change_in_amount(self,change):
		self.amount += change


# Defining the element of the Deck:
deck = list()
suits = ['Diamond', 'Heart', 'Spade', 'Club']
nums = ['2','3','4','5','6','7','8','9','10','J','Q','K','A']

# Constructing a complete deck of cards:
for suit in suits: 
    for num in nums:
        deck.append((suit+'-'+num))

# This function should deal random cards from the deck to player list:
# ----------------------------------------------------------------
def deal(player,no_of_cards):
	"""
	INPUT : Player list and number of cards 
	OUTPUT : Player list with the number of cards specified

	"""
	for i in range(no_of_cards):
		shuffle(deck)
		player.append(deck.pop(len(deck) - 1))
	return player
# ----------------------------------------------------------------
# This function returns the sum of the cards the player has:
# ----------------------------------------------------------------
def getting_sum(player):
	sum_of_cards = 0
	for i in player:
		i = i.split('-')
		i = int(i[1])
		sum_of_cards += i
	return sum_of_cards
# ----------------------------------------------------------------
# This function creates the board for the game:
# ----------------------------------------------------------------
def display_board(player):
	print "\t",
	for i in player:
		print "|%s" %(i),
# ----------------------------------------------------------------

#Testing the program:
# player = []
# player = deal(player,5)
# display_board(player)
# print player
# s = getting_sum(player)
# print s
# name = Player('Neelotpal',100)
# print name.amount
# name.change_in_amount(-50)
# print name.amount