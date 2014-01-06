require 'spec_helper'

describe Factory::Party do

  let(:factory) { Factory::Party.new number: 3  }

  it 'has members' do
    expect(subject.members).to eq []
  end

  it 'create several heros' do
    expect(factory.members.count{ |member| member.class == Hero }).to eq 3
  end

  describe '#create' do
    let(:hero) { subject.create }

    it 'creates a Warrior' do
      expect(hero).to be_instance_of Hero
    end
  end
end
