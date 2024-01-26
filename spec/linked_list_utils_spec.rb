# frozen_string_literal: true

require './spec/rails_helper'
require './app/linked_list'
require './app/linked_list_utils'

describe LinkedListUtils do
  before do
    @inicial = ['Oi', 5, Time.parse('1/1/2005 14:00:00'), 1.5, 'Tchau']
    @list = LinkedList.new
    @inicial.each { |item| @list.append(item) }
    @final = []
  end

  describe 'reversing the list' do
    it 'it is inversaly equal to the list inserted' do
      first_item = @list.head
      item = LinkedListUtils.reverse(first_item)

      @final.push(item.value)
      until item.next.nil?
        item = item.next
        @final.push(item.value)
      end

      expect(@final).to eq(@inicial.reverse)
    end

    it 'it returns false if the list is empty' do
      list = LinkedList.new
      expect(list.reverse).to be_falsy
    end
  end
end
