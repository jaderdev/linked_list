# frozen_string_literal: true

require './app/node'
require 'time'

# Implementação de lista ligada
class LinkedList
  def initialize
    @head = nil
  end

  def empty?
    return true if @head.nil?

    false
  end

  def append(value)
    if @head
      find_tail.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tail
    node = @head
    return node unless node.next

    return node unless node.next while (node = node.next)
  end

  def print
    node = @head
    puts node
    while (node = node.next)
      puts node
    end
  end

  def reverse
    false unless @head
    current = @head
    prev = nil
    until current.nil?
      n = current.next
      current.next = prev
      prev = current
      current = n
    end
    @head = prev
  end

  def shift
    return false if empty?

    curr_head = @head
    new_head = @head.next
    @head.next = nil
    @head = new_head

    curr_head
  end

  def size
    if empty?
      count = 0
    else
      count = 1
      current_node = @head
      until current_node.next.nil?
        current_node = current_node.next
        count += 1
      end
    end
    count
  end
end
