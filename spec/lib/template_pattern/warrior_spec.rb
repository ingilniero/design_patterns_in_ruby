require 'spec_helper'

describe Warrior do

    it 'has a default damage rating of "15"' do
      expect(subject.damage).to eq 15
    end

    it 'has special ability Strike' do
      expect(subject.abilities).to include(:strike)
    end
end
