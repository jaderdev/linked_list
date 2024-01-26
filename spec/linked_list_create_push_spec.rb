# frozen_string_literal: true

require './spec/rails_helper'
require './app/linked_list'

describe LinkedList do
  before do
    @inicial = ['Oi', 5, Time.parse('1/1/2005 14:00:00'), 1.5, 'Tchau']
    @list = LinkedList.new
  end

  describe 'Create a new list' do
    it 'and the list is empty' do
      list = LinkedList.new
      expect(list.empty?).to be_truthy
    end
  end

  describe 'Push an item' do
    it 'and the list is no more empty' do
      @list.append('Oi')
      expect(@list.empty?).to be_falsy
    end

    it 'and the size increases accordingly' do
      expect(@list.empty?).to be_truthy
      expect(@list.size).to eq(0)

      @list.append('Oi')

      expect(@list.size).to eq(1)
    end
  end
end
