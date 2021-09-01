# frozen_string_literal: true

require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    n = new Node
    n.value = value
    if @head.nil?
      prepend(value)
    else
      tmp = @head
      tmp = tmp.next_node until tmp.next_node.nil?
      tmp.next_node = n
    end
  end

  def prepend(value)
    n = new Node
    n.value = value
    @head = n
  end

  def size
    s = 0
    tmp = @head
    s += 1 until tmp.next_node.nil?
    s
  end

  def head
    @head
  end

  def tail
    tmp = @head
    tmp = tmp.next_node until tmp.next_node.nil?
    tmp
  end

  def at(index)
    i = 0
    tmp = @head
    until tmp.next_node.nil?
      tmp if index == i
      tmp = tmp.next_node
    end
    'index not found'
  end
end
