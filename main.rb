require_relative 'lib/node.rb'
require_relative 'lib/linked_list.rb'

list = LinkedList.new
p list.to_s
list.prepend("test1")
p list.to_s
list.append("test2")
p list.to_s
list.append("test3")
p list.to_s
list.append(3)
p list.to_s
list.prepend("test4")
p list.to_s
list.prepend("test5")
p list.to_s
p list.size
list.append(5)
p list.size
p list.head
p list.tail
p list.at(3)
p list.at(7)
p list.at(8)
p list.contains?(3)
p list.find(3)
p list.to_s
list.pop
p list.to_s
list.pop
p list.to_s
p list.contains?(3)
p list.find(3)
p list.find("test4")
p list.to_s
list.insert_at("test7", 2)
p list.to_s
list.insert_at("test8", 1)
p list.to_s
list.insert_at("test9", 5)
p list.to_s
list.remove_at(3)
p list.to_s






