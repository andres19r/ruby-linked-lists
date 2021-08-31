# frozen_string_literal: true

require_relative 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    n = new Node
    n.value = value
    @head = n if @head.nil?
  end

  def prepend(value)
    n = new Node
    n.value = value
    @head = n
  end
end
