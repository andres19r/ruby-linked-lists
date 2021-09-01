# frozen_string_literal: true

require_relative 'node'

# Implementation of a Linked List data structure
class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    n = Node.new
    n.value = value
    if @head.nil?
      @head = n
    else
      tmp = @head
      tmp = tmp.next_node until tmp.next_node.nil?
      tmp.next_node = n
    end
  end

  def prepend(value)
    n = Node.new
    n.value = value
    if @head.nil?
      @head = n
    else
      tmp = @head
      @head = n
      @head.next_node = tmp
    end
  end

  def size
    s = 0
    tmp = @head
    until tmp.nil?
      s += 1
      tmp = tmp.next_node
    end
    s
  end

  def head
    @head.value
  end

  def tail
    tmp = @head
    tmp = tmp.next_node until tmp.next_node.nil?
    tmp.value
  end

  def at(index)
    i = 0
    tmp = @head
    until tmp.nil?
      return tmp.value if index == i

      tmp = tmp.next_node
      i += 1
    end
    'index not found'
  end

  def pop
    tmp = @head
    until tmp.next_node.nil?
      prev = tmp
      tmp = tmp.next_node
    end
    prev.next_node = nil
    tmp.value
  end

  def contains?(value)
    tmp = @head
    until tmp.nil?
      return true if tmp.value == value

      tmp = tmp.next_node
    end
    false
  end

  def find(value)
    i = 0
    tmp = @head
    until tmp.nil?
      return i if tmp.value == value

      i += 1
      tmp = tmp.next_node
    end
    nil
  end

  def to_s
    s = ''
    tmp = @head
    until tmp.nil?
      s += "(#{tmp.value}) -> "
      tmp = tmp.next_node
    end
    s += 'nil'
    s
  end

  def insert_at(value, index)
    if index > size - 1
      puts 'index error'
      return nil
    end

    i = 0
    tmp = @head
    n = Node.new
    n.value = value
    until tmp.nil?
      if index - 1 == i
        n.next_node = tmp.next_node.next_node
        tmp.next_node = n
      end
      tmp = tmp.next_node
      i += 1
    end
  end

  def remove_at(index)
    i = 1
    tmp = @head
    if index.zero?
      @head = tmp.next_node
    else
      until tmp.next_node.nil?
        prev = tmp
        if index == i
          prev.next_node = tmp.next_node.next_node
          return
        end
        i += 1
        tmp = tmp.next_node
      end
    end
  end
end
