require './spec/rails_helper'
require './app/node'

describe Node do
  describe 'Create a new node' do
    before do
      @value = 'Oi'
      @node = Node.new(@value)
    end

    it 'and the next node is empty' do
      expect(@node.next).to be_nil
    end

    it 'and the value is the same of initilized' do
      expect(@node.value).to eq(@value)
    end
  end
end
