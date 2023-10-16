require_relative 'lib/node.rb'

class LinkedList

  attr_accessor :head

  def initialize(head = nil)
    @head = Node.new
  end
  
  def append(value)
    end_node = Node.new(value)
    cur = @head
    while cur.next_node != nil
      cur = cur.next_node
      p cur.value
      p cur.next_node
    end
    cur.next_node = end_node
  end
end



list = LinkedList.new
list.append("last one")
p list
list.append("real last one")
p list
list.append(3)
p list




