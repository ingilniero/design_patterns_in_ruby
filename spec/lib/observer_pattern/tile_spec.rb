require 'spec_helper'

describe Observer::Tile do

  let(:hero) { Observer::Hero.new }

  describe '#cursed?' do
    context 'when is cursed' do
      subject { Observer::Tile.new cursed: true }

      it { expect(subject.cursed?).to be_true }
    end

    context 'when is not cursed' do
      it { expect(subject.cursed?).to be_false }
    end
  end

  describe '#activate_curse' do
    subject { Observer::Tile.new cursed: true }

    before { hero.should_receive(:damage) }

    it 'sends damage message to hero' do
      subject.activate_curse(hero)
    end
  end
end
