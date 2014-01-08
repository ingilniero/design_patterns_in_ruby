require 'spec_helper'

describe Decorator::MagicDecorator do
  let(:common_item) { Decorator::CommonItem.new }
  let(:magic_item) { Decorator::MagicDecorator.new common_item }

  it 'is three times more expensive than common item' do
    expect(magic_item.price).to eq common_item.price * 3
  end

  it 'has another description' do
    expect(magic_item.description).to eq common_item.description + "Magic."
  end

  describe '#use' do
    it { expect(magic_item.use).to eq 'Item used' }
  end
end
