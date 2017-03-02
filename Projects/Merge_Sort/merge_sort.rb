#Implementing Merge-Sort :-


def merge_sort(array)
	return array if array.length == 1    #Base Case             
	merge merge_sort(array[0...array.length/2]), merge_sort(array[array.length/2..-1])    #Recursive step
end

def merge(array_1,array_2)
	result = []
	until array_1.length == 0 or array_2.length == 0 
		if array_1.first <= array_2.first   #Comparing the first element of both the arrays
			result << array_1.shift			#Storing the first element of the array into the result and deleting that element of the the array
		else
			result << array_2.shift
		end
	end
	result + array_1 + array_2
end


arr = [1,5,2,3,6,0,8,7]
print merge_sort(arr)