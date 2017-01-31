#Bubble sorting
def bubble_sort(user_array)
    for num_passes in 0...(user_array.length - 1)
      puts "Pass #{num_passes + 1}" + "\n" + "-"*20
      for i in 0...(user_array.length - 1)
          if user_array[i] > user_array[i + 1]
            user_array[i],user_array[i+1] = user_array[i+1],user_array[i]
          end
      end
    end
  puts "Sorted Array :\n"
  puts "-"*20
  puts user_array
  puts "-"*20
end


puts "Enter the numbers of elements in the array :"
numbers_of_elements = gets.chomp.to_i
array = []
for i in 0...numbers_of_elements
  puts "Enter elements #{(i+1)} :"
  element = gets.chomp.to_i
  array << element
end
puts "Array Before Sorting :\n "
puts "-"*20
puts array
puts "-"*20
puts "Sorting :\n "
puts bubble_sort(array)
