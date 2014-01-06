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

  describe 'creation of differents occupation' do
    context 'warriors' do
      let(:factory) { Factory::Party.new number: 2, type: :warrior }
      it 'populates its members as warriors' do
        expect(factory.members.count { |member| member.class == Warrior }).to eq 2
      end
    end

    context 'mages' do
      let(:factory) { Factory::Party.new number: 3, type: :mage }

      it 'populates its members as mages' do
        expect(factory.members.count { |member| member.class == Mage }).to eq 3
      end
    end
  end
end
