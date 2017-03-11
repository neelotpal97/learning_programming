#Implementation of Linked List using Ruby
#Basic Structure [ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil
class LinkedList
	attr_accessor :size
	class Node
		attr_accessor :value, :next
		def initialize(value)
			@value = value
			@next = nil
		end
	end

	def initialize
		@head = nil
		@tail = nil
		@size = 0
	end

	def append(data)
		node = Node.new(data)
		@size += 1
		if @head.nil?
			@head = node
			@tail = @head
		else
			@tail.next = node
			@tail = @tail.next
		end
	end

	def prepend(data)
		node = Node.new(data)
		@size += 1
		if @head.nil?
			@head = node
			@tail = @head
		else
			node.next = @head
			@head = node
		end
	end

	def size_of_list 
		return @size
	end

	def head
		return @head.value
	end

	def tail
		return @tail.value
	end

	def at(value)
		position = @head
		index = 0
		until position.nil?
			if position.value == value
				return index
			end
			index +=1
			position = position.next
		end
		return nil
	end

	def pop
		position = @head
		until position.next == @tail
			position = position.next
		end
		
		@tail = position
		@tail.next = nil
		@size -= 1
	end

	def contains?(value)
		position = @head
		until position.nil?
			return true if position.value == value
			position = position.next
		end
		return false
	end

	def find(value)
		position = @head
		index = 0
		until position.nil?
			if position.value == value
				return index
			end
			position = position.next
			index += 1
		end
		return nil
	end

	def display
		position = @head
		until position.nil?
			print "(" + position.value.to_s + ")" + " " + "-> "
			position = position.next
		end
		print "nil"
	end




end 

list = LinkedList.new
list.append(1)
list.prepend(0)
list.append(2)
puts list.size_of_list
puts list.head
puts list.tail 
list.pop
puts list.size_of_list
puts list.contains?(5)
puts list.contains?(1)
puts list.find(1)
puts list.find(5)
list.display





