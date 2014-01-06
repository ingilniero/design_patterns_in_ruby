require 'spec_helper'

class FakeFactory < Factory::Party
end

describe Factory::Party do

  it 'has members' do
    expect(subject.members).to eq []
  end

  describe '#create' do
    it 'requires subclasses to implement create method' do
      expect{ FakeFactor.new number: 2 }.to raise_exception
    end
  end
end
