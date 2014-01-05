require 'spec_helper'

describe Observer::Hero do

  let(:tile) { double('tile', cursed?: true ) }

  it 'has default health equal to 10' do
    expect(subject.health).to eq 10
  end

  describe '#damage' do
    it { expect{ subject.damage(4) }.to change{ subject.health }.by(-4) }
  end

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
    context 'when tile is cursed' do
      before { tile.stub(:cursed?).and_return(true) }

      it { expect { subject.discover(tile) }.to change{ subject.cursed? }.from(false).to(true) }
    end

    context 'when tile is not cursed' do
      before { tile.stub(:cursed?).and_return(false) }

      it { expect { subject.discover(tile) }.to_not change{ subject.cursed? } }
    end
  end

end
