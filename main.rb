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
    end
    cur.next_node = end_node
  end

  def prepend(value)
    cur = @head
    1.times do
      cur = cur.next_node
      if cur == nil
        append(value)
      else
        start_node = Node.new(value)
        start_node.next_node = cur
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

  def at(index)
    cur = @head
    index.times do
      cur = cur.next_node
    end
    if cur == nil
       "There is no node with this index"
    else
      cur
    end 
  end 

  def pop
    cur = @head
    len = size
    len -= 1
    len.times do
      cur = cur.next_node
    end
    cur.next_node = nil
  end

  def contains?(value)
    cur = @head
    while cur.next_node != nil
      cur = cur.next_node
      if value == cur.value
        return true
        break
      end
    end
    return false
  end

  def find(value)
    cur = @head
    index = 0 
    while cur.next_node != nil
      cur = cur.next_node
      if value == cur.value
        return index
        break
      else
        index += 1
      end 
    end
    return nil
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
#p list.head
#p list.tail
p list.at(3)
p list.at(7)
p list.at(8)
p list.contains?(3)
p list.find(3)
list.pop
p list
list.pop
p list
p list.contains?(3)
p list.find(3)
p list.find("start")







