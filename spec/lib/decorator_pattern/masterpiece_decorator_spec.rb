require 'spec_helper'

describe Decorator::MasterpieceDecorator do
  let(:common_item) { Decorator::CommonItem.new }
  let(:masterpiece_item) { Decorator::MasterpieceDecorator.new common_item }

  it 'is three times more expensive than common item' do
    expect(masterpiece_item.price).to eq common_item.price * 2
  end

  it 'has another description' do
    expect(masterpiece_item.description).to eq common_item.description + "Masterpiece."
  end

  describe '#use' do
    it { expect(masterpiece_item.use).to eq 'Item used' }
  end
end
