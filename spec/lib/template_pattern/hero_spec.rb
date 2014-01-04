require 'spec_helper'

describe Hero do
  context 'Default Hero' do

    it 'has default damage rating of "10"' do
      expect(subject.damage).to eq 10
    end

    it 'can attack' do
      expect(subject.attack).to eq 'Attacked dealing 10 damage'
    end
  end
end
