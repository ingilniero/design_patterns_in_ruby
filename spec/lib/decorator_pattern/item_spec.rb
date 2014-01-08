require 'spec_helper'

describe Decorator::CommonItem do
  it 'has price' do
    expect(subject.price).to eq 10
  end

  it 'has description' do
    expect(subject.description).to eq 'Item.'
  end

  it 'can be used' do
    expect(subject).to respond_to(:use)
  end
end
