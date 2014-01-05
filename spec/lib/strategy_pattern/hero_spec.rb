require 'spec_helper'

describe Hero do
  it 'has damage' do
    expect(subject.damage).to eq 10
  end

  it 'has health' do
    expect(subject.health).to eq 5
  end

  describe 'skills' do
    it 'has stealth' do
      expect(subject.skills).to include(:stealth)
    end

    it 'has driving' do
      expect(subject.skills).to include(:driving)
    end

    it 'has intimidation' do
      expect(subject.skills).to include(:intimidation)
    end
  end
end
