# frozen_string_literal: true

class LinkedList
  attr_accessor :head_node

  def initialize(_head = nil)
    @head_node = Node.new
  end

  def append(value)
    end_node = Node.new(value)
    cur = @head_node
    cur = cur.next_node until cur.next_node.nil?
    cur.next_node = end_node
  end

  def prepend(value)
    cur = @head_node

    cur = cur.next_node
    if cur.nil?
      append(value)
    else
      start_node = Node.new(value)
      start_node.next_node = cur
      @head_node.next_node = start_node
    end
  end

  def size
    cur = @head_node
    count = 0
    until cur.next_node.nil?
      cur = cur.next_node
      count += 1
    end
    count
  end

  def head
    cur = @head_node
    cur.next_node
  end

  def tail
    cur = @head_node
    cur = cur.next_node until cur.next_node.nil?
    cur
  end

  def at(index)
    cur = @head_node
    index.times do
      cur = cur.next_node
    end
    if cur.nil?
      'There is no node with this index'
    else
      cur
    end
  end

  def pop
    cur = @head_node
    len = size
    len -= 1
    len.times do
      cur = cur.next_node
    end
    cur.next_node = nil
  end

  def contains?(value)
    cur = @head_node
    until cur.next_node.nil?
      cur = cur.next_node
      return true if value == cur.value
    end
    false
  end

  def find(value)
    cur = @head_node
    index = 0
    until cur.next_node.nil?
      cur = cur.next_node
      return index if value == cur.value
      index += 1
    end
    nil
  end

  def to_s
    cur = @head_node
    str = ''
    until cur.next_node.nil?
      cur = cur.next_node
      str += "( #{cur.value} ) -> "
    end
    str += 'nil'
    str
  end

  def insert_at(value, index)
    cur = @head_node
    count = 0
    until cur.next_node.nil?
      cur = cur.next_node
      if count == index - 1
        before = cur
      elsif count == index
        after = cur
      end
      count += 1
    end
    new_node = Node.new(value)
    new_node.next_node = after
    before.next_node = new_node
  end

  def remove_at(index)
    cur = @head_node
    count = 0
    until cur.next_node.nil?
      cur = cur.next_node
      if count == index - 1
        before = cur
      elsif count == index + 1
        after = cur
      end
      count += 1
    end
    before.next_node = after
  end
end
