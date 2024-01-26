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

  describe 'After the list is fuelled' do
    it 'the content inside corresponds to the pushed' do
      count = 0
      item = @list.shift

      while item
        expect(item.value).to eq(@inicial[count])
        item = @list.shift
        count += 1
      end
    end

    it 'it prints correctly the content of each node' do
      expect do
        @list.print
      end.to output("#{@inicial.join("\n")}\n").to_stdout
    end
  end
end
