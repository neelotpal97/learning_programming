#Mastermind
class mastermind

	def display_board(user_array,move)
		puts "\t-------------------------"
		puts "\t#{user_array[0]}\t#{user_array[1]}\t#{user_array[2]}\t#{user_array[3]}"
	end

	def display_guide
		puts "\t-------------------------"
		puts "\t       =MASTERMIND="
		puts "\t-------------------------"
		puts "  Red:R Green:G Blue:B Orange:O White:W"
		puts "\t1\t2\t3\t4"
		puts "\t-------------------------"
	end

	def legal?(user_array)
		if user_array.length > 4
			return true
		end
		return false
	end

end



puts "Enter the Pattern: "
user_array = gets.chomp
user_array = user_array.split("")
display_guide
display_board(user_array)