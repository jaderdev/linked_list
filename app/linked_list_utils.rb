# frozen_string_literal: true

require './app/node'

# Implementação funcional de lista ligada
class LinkedListUtils
  def self.reverse(node)
    return false unless node

    current = node
    prev = nil
    until current.nil?
      n = current.next
      current.next = prev
      prev = current
      current = n
    end
    prev
  end
end
