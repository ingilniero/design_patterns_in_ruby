require 'spec_helper'

describe Decorator::CommonItem do
  let(:magic_item) { Decorator::MagicDecorator.new subject }

  it 'has price' do
    expect(subject.price).to eq 10
  end

  it 'has description' do
    expect(subject.description).to eq 'Item.'
  end

  describe '#use' do
    it { expect(subject.use).to eq 'Item used' }
  end

  describe 'full item' do
    let(:full_item) { Decorator::MasterpieceDecorator.new magic_item }

    it 'is six times more expensive than common item' do
      expect(full_item.price).to eq subject.price * 6
    end

    context 'when is mostly a master piece' do
      it 'has masterpiece description' do
        expect(full_item.description).to eq subject.description + "Magic.Masterpiece."
      end
    end

    context 'when is mostly magical' do
      let(:full_item) { Decorator::MagicDecorator.new Decorator::MasterpieceDecorator.new subject }
      it 'has a magical description' do
        expect(full_item.description).to eq subject.description + "Masterpiece.Magic."
      end
    end

  end
end
