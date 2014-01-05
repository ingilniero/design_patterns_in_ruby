require 'spec_helper'

describe Strategy::Hero do
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

  describe '#print_stats' do
    it 'prints default battle stats' do
      expect(subject.print_stats).to eq "Damage: 10\nHealth: 5"
    end
  end

  describe '#print_skills' do
    it 'prints hero skills' do
      expect(subject.print_skills).to eq "Stealth\nDriving\nIntimidation\n"
    end
  end
end
