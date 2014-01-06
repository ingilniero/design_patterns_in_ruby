require 'spec_helper'

describe Iterator::InventoryIterator do
  let(:inventory) { Iterator::Inventory.new }
  let(:iterator) { Iterator::InventoryIterator.new inventory }

  describe '#has_next?' do
    context 'when doesn\'t have a next item' do
      it { expect(iterator.has_next?).to be_false }
    end

    context 'when has a next item' do
      before { inventory.add('item') }

      it { expect(iterator.has_next?).to be_true }
    end
  end

  describe '#next' do
    before { inventory.add('item') }

    it 'returns the next item' do
      expect(iterator.next).to eq 'item'
    end
  end
end
