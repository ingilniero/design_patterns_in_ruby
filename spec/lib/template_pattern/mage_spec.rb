require 'spec_helper'

describe Mage do

  it 'has a default damage rating of "7"' do
    expect(subject.damage).to eq 7
  end

  it 'has special ability Magic Arrow' do
    expect(subject.abilities).to include(:magic_arrow)
  end

  it 'greets other characters' do
    expect(subject.greet).to eq [ 'Hello', 'Mage here!' ]
  end
end
