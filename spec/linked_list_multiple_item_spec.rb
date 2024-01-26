# frozen_string_literal: true

require './spec/rails_helper'
require './app/linked_list'

describe LinkedList do
  before do
    @inicial = ['Oi', 5, Time.parse('1/1/2005 14:00:00'), 1.5, 'Tchau']
    @list = LinkedList.new
  end
  describe 'Push multiple items' do
    it 'and the size corresponds' do
      @inicial.each { |item| @list.append(item) }
      expect(@list.size).to eq(@inicial.length)
    end

    it 'and can find the last item successfully' do
      @inicial.each { |item| @list.append(item) }
      expect(@list.find_tail.value).to eq(@inicial[@inicial.length - 1])
    end

    it 'and shift the first item successfully' do
      @inicial.each { |item| @list.append(item) }
      expect(@list.shift.value).to eq(@inicial[0])
    end
  end
end
