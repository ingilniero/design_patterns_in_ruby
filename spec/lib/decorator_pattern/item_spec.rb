require 'spec_helper'

describe Decorator::CommonItem do
  let(:magic_item) { Decorator::CommonItem.new true }
  let(:masterpice_item) { Decorator::CommonItem.new false, true }

  it 'has price' do
    expect(subject.price).to eq 10
  end

  it 'has description' do
    expect(subject.description).to eq 'Item.'
  end

  it 'can be used' do
    expect(subject).to respond_to(:use)
  end

  describe 'magic items' do
    it 'is three times more expensive than common item' do
      expect(magic_item.price).to eq subject.price * 3
    end

    it 'has another description' do
      expect(magic_item.description).to eq subject.description + "Magic."
    end
  end

  describe 'masterpice item' do
    it 'is three times more expensive than common item' do
      expect(masterpice_item.price).to eq subject.price * 2
    end

    it 'has another description' do
      expect(masterpice_item.description).to eq subject.description + "Masterpiece."
    end
  end
end
