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

  describe 'Push' do
    describe 'an item' do
      it 'and the list is no more empty' do
        @list.append('Oi')
        expect(@list.empty?).to be_falsy
      end

      it 'and the size increases' do
        expect(@list.empty?).to be_truthy
        expect(@list.size).to eq(0)

        @list.append('Oi')

        expect(@list.size).to eq(1)
      end
    end

    describe 'multiple items' do
      it 'and the size corresponds' do
        @inicial.each { |item| @list.append(item) }
        expect(@list.size).to eq(@inicial.length)
      end

      it 'and shift the first item successfully' do
        @inicial.each { |item| @list.append(item) }
        expect(@list.shift.value).to eq(@inicial[0])
      end

      it 'and find the last item successfully' do
        @inicial.each { |item| @list.append(item) }
        expect(@list.find_tail.value).to eq(@inicial[@inicial.length - 1])
      end

      it 'and the content inside corresponds to the pushed' do
        @inicial.each { |item| @list.append(item) }

        count = 0
        item = @list.shift

        while item
          expect(item.value).to eq(@inicial[count])
          item = @list.shift
          count += 1
        end
      end

      it 'should say the content of each node' do
        @inicial.each { |item| @list.append(item) }

        expect do
          @list.print
        end.to output(@inicial.join("\n") + "\n").to_stdout
      end
    end
  end

  describe 'After the list is fuelled' do
    it 'it reversed is equal to the input normal' do
      @inicial.each { |item| @list.append(item) }

      @list.reverse

      final = []
      item = @list.shift

      while item
        final.push(item.value)
        item = @list.shift
      end

      expect(final.reverse).to eq(@inicial)
    end
  end
end
