require 'spec_helper'

describe Strategy::BattleStats do
  let(:context) { Strategy::Hero.new subject }

  describe '#print' do
    it 'prints context stats' do
      expect(subject.print(context)).to eq "Damage: 10\nHealth: 5"
    end
  end

end
