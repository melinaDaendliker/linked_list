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
      #p cur.value
      #p cur.next_node
    end
    cur.next_node = end_node
  end

  def prepend(value)
    cur = @head
    1.times do
      cur = cur.next_node
      #p cur
      if cur == nil
        append(value)
      else
        #p cur.value
        #p cur.next_node
        start_node = Node.new(value)
        start_node.next_node = cur
        #p start_node
        @head.next_node = start_node
      end
    end
  end

  def size
    cur = @head
    count = 0
    while cur.next_node != nil
      cur = cur.next_node
      count += 1
    end
    count 
  end 

  def head 
    cur = @head
    1.times do
      cur = cur.next_node
    end
    cur
  end

  def tail
    cur = @head
    while cur.next_node != nil
      cur = cur.next_node
    end
    cur
  end
end



list = LinkedList.new
p list
list.prepend("start")
p list
list.append("last one")
p list
list.append("real last one")
p list
list.append(3)
p list
list.prepend("new start")
p list
list.prepend("first one")
p list 
p list.size
list.append(5)
p list.size
p list.head
p list.tail






