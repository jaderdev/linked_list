# frozen_string_literal: true

require './spec/rails_helper'
require './app/linked_list'

describe LinkedList do
  before do
    @inicial = ['Oi', 5, Time.parse('1/1/2005 14:00:00'), 1.5, 'Tchau']
    @list = LinkedList.new
    @inicial.each { |item| @list.append(item) }
    @final = []
  end

  describe 'reversing the list' do
    it 'it is inversaly equal to the list inserted' do
      @list.reverse
      item = @list.shift

      while item
        @final.push(item.value)
        item = @list.shift
      end

      expect(@final.reverse).to eq(@inicial)
    end

    it 'it returns false if the list is empty' do
      list = LinkedList.new
      expect(list.reverse).to be_falsy
    end
  end
end
