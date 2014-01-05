require 'spec_helper'

describe Observer::Tile do
  describe '#cursed?' do
    context 'when is cursed' do
      subject { Observer::Tile.new cursed: true }

      it { expect(subject.cursed?).to be_true }
    end

    context 'when is not cursed' do
      it { expect(subject.cursed?).to be_false }
    end
  end
end
