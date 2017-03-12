require_relative "linked_list.rb"
list = LinkedList.new
list.append(1)
list.prepend(0)
list.append(2)
list.append(3)
list.append(4)
list.append(5)
list.append(6)
list.append(7)
puts list.size_of_list
puts list.head
puts list.tail 
list.pop
puts list.size_of_list
puts list.contains?(5)
puts list.contains?(1)
puts list.find(1)
puts list.find(5)
puts list.to_s
puts "\n"

