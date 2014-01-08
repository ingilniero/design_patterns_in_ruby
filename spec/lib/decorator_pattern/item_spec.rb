require 'spec_helper'

describe Decorator::CommonItem do
  it 'has price' do
    expect(subject.price).to eq 10
  end

  it 'has description' do
    expect(subject.description).to eq 'Item.'
  end
end
