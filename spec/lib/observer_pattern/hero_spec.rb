require 'spec_helper'

describe Observer::Hero do

  let(:tile) { double('tile') }

  describe '#cursed?' do
    context 'when is not cursed' do
      it { expect(subject.cursed?).to be_false }
    end

    context 'when is cursed' do
      before { subject.discover(tile) }
      it { expect(subject.cursed?).to be_true }
    end
  end

  describe '#discover' do
    it 'changes cursed state to true' do
      expect { subject.discover(tile) }.to change{ subject.cursed? }.from(false).to(true)
    end
  end

end
