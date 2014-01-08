require 'spec_helper'

describe Adapter::QuestAdapter do
  let(:hero) { Adapter::Hero.new level: 10 }

  subject { Adapter::QuestAdapter.new Adapter::OldQuest.new, difficulty: 5}

  before { subject.hero = hero }

  it 'has a difficulty' do
    expect(subject.difficulty).to eq 5
  end

  describe '#finish' do
    it 'increases hero experience' do
      expect { subject.finish }.to change { hero.exp }.by(50)
    end
  end
end
