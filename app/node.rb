# frozen_string_literal: true

# Implementação do nó basico da lista linkada
class Node
  attr_accessor :next
  attr_reader   :value

  def initialize(value)
    @value = value
    @next  = nil
  end

  def to_s
    @value.to_s
  end
end
