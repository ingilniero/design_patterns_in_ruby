require 'spec_helper'

describe Strategy::Hero do
  subject { Strategy::Hero.new Strategy::BattleStats.new }

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
    it 'sends print message to printer' do
      subject.printer.should_receive(:print)
      subject.print_stats
    end
  end
end
