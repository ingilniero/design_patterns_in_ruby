require 'spec_helper'

describe Decorator::CommonItem do
  let(:masterpice_item) { Decorator::CommonItem.new false, true }
  let(:full_item) { Decorator::CommonItem.new true, true }

  it 'has price' do
    expect(subject.price).to eq 10
  end

  it 'has description' do
    expect(subject.description).to eq 'Item.'
  end

  describe '#use' do
    it { expect(subject.use).to eq 'Item used' }
  end

  describe 'masterpice item' do
    it 'is three times more expensive than common item' do
      expect(masterpice_item.price).to eq subject.price * 2
    end

    it 'has another description' do
      expect(masterpice_item.description).to eq subject.description + "Masterpiece."
    end
  end

  describe 'full item' do
    it 'is six times more expensive than common item' do
      expect(full_item.price).to eq subject.price * 6
    end

    it 'has another description' do
      expect(full_item.description).to eq subject.description + "Magic.Masterpiece."
    end
  end
end
