#Solving the problem with iternation
#Using simple iteration
def fibonacci(number)
	number = number - 2
	result = [0,1]
	a = 0
	b = 1
	until number == 0 do 
		s = a + b
		result << s
		a = b
		b = s
		number = number - 1
	end

	return result
end

#Using Recursion
def recursive_fib(number)
	if number == 0
		return 0
	elsif number == 1
		return 1
	else
		return recursive_fib(number-1) + recursive_fib(number-2)
	end
end
			
puts "Using Interation:-"		
puts fibonacci(16)
puts "Using Recursion"
0.upto(16 - 1) { |x| puts recursive_fib(x) }
