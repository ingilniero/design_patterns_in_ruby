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

  describe '#add_cursed' do
    it 'adds creature to cursed_creatures collection' do
      expect { subject.add_cursed(hero) }.to change{ subject.cursed_creatures.size }.by(1)
    end
  end

  describe '#activate_curse' do
    subject { Observer::Tile.new cursed: true }

    context 'on one hero' do
      before do
        subject.add_cursed(hero)
        hero.should_receive(:damage)
      end

      it 'sends damage message to hero' do
        subject.activate_curse
      end
    end

    context 'on several heroes' do
      let(:mage) { Observer::Hero.new }

      before do
        hero.discover(subject)
        mage.discover(subject)
        hero.should_receive(:damage)
        mage.should_receive(:damage)
      end

      it 'sends damage message to each hero' do
        subject.activate_curse
      end
    end
  end
end
