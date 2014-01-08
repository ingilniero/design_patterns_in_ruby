require 'spec_helper'

describe Adapter::Quest do
  let(:hero) { Adapter::Hero.new level: 10 }
  before { subject.hero = hero }

  it 'has a difficulty' do
    expect(subject.difficulty).to eq 3
  end

  describe '#calculate_experience' do


    it 'returns the experience earned' do
      expect(subject.calculate_experience).to eq 15
    end
  end

  describe '#finish' do
    it 'increases hero experience' do
      expect { subject.finish }.to change{ hero.exp }.by(15)
    end
  end

end
