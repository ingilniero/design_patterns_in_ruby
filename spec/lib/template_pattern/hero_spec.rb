require 'spec_helper'

describe Hero do
  context 'Default Hero' do
    subject { Hero.new }

    it 'has default damage rating of "10"' do
      expect(subject.damage).to eq 10
    end

    it 'can attack' do
      expect(subject.attack).to eq 'Attacked dealing 10 damage'
    end
  end

  context 'Warrior' do
    subject { Hero.new :warrior }

    it 'has a default damage rating of "15"' do
      expect(subject.damage).to eq 15
    end

    it 'has special ability Strike' do
      expect(subject.abilities).to include(:strike)
    end
  end

end
