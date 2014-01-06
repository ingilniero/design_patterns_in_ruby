require 'spec_helper'

describe Iterator::Inventory do
  let(:item1) { Iterator::Item.new }
  let(:item2) { Iterator::Item.new }

  it 'has a collection of items' do
    expect(subject.items).to eq []
  end

  describe '#add' do

    before do
      item1.update_cost 10
      item2.update_cost 20
    end

    it do
      expect do
        subject.add item1
        subject.add item2
      end.to change { subject.items.size }.by(2)
    end
  end
end
