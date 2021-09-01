# frozen_string_literal: true

require_relative 'linked_list'

list = LinkedList.new
list.append(5)
list.append(4)
list.append(3)
list.append(2)
list.append(1)
puts list.to_s
list.prepend(0)
puts list.to_s
puts "size: #{list.size}"
puts "head: #{list.head}"
puts "tail: #{list.tail}"
puts "element at 1: #{list.at(1)}"
puts "element at 2: #{list.at(2)}"
puts "element at 4: #{list.at(4)}"
puts "pop: #{list.pop}"
puts list.to_s
puts "contains 2? #{list.contains?(2)}"
puts "contains 4? #{list.contains?(4)}"
puts "contains 10? #{list.contains?(10)}"
puts "index of 2: #{list.find(2)}"
puts "index of 5: #{list.find(5)}"
puts "index of 10: #{list.find(10)}"
