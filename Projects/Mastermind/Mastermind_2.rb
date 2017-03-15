 
class Mastermind
	@@turns = 12
	def initialize
		@code = create_code
	end
	# This method is generates a random code
	def create_code
		code = []
		0.upto(4) {|x| code[x] = rand(4)}
		return code
	end
	

	# This compares the code and user array
	def compare(user_array,code)
		0.upto(4) do |i|
			if user_array[i] == code[i]
				user_array[i] = '^'
			end
		end
		return user_array
	end

	# The Game starts here
	def start_game
		@user_array = user_input
		while @@turns != 0 
			@user_array = compare(@user_array,@code)
			display_board(@user_array)
			if win?(@user_array)
				puts "You Won!"
				break
			end
			@user_array = user_input	
			@@turns -= 1
		end
	end

	#Checks the condition for winning!
	def win?(user_array)
		user_array.each do |i|
			return false if i != "^" 
		end
		return true
	end

	def user_input 
		array = []
		puts "Enter the 5 digit code"
		0.upto(4) do |x|
			print "$==>"
			array[x] = gets.chomp.to_i
		end
		return array
	end

	def display_board(user_array)
		puts "\t-------------------------"
		puts "\t#{user_array[0]}\t#{user_array[1]}\t#{user_array[2]}\t#{user_array[3]}\t#{user_array[4]}"
	end

end


a = Mastermind.new
a.start_game

