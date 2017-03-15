#Mastermind


	def display_board(user_array)
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

	def create_code
		code = []
		4.times do 
			i = rand(4)
			if i == 0
				code << "R"
			elsif i == 1
				code << "G"
			elsif i == 2
				code << "B"
			elsif i == 3
				code << "O"
			elsif i == 5
				code << "W"
			end
		end
		return code
	end		

	def check_the_guess(code,user_array)
		code.each do |i|
			if code[i] == user_array[i]
				user_array[i] = "^"
			end
		end
	end



puts "Enter the Pattern: "
user_array = gets.chomp.upcase
user_array = user_array.split("")
display_guide
display_board(user_array)
10.times do
	display_board(create_code)
end

