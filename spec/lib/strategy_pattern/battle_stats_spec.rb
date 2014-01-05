require 'spec_helper'

describe Strategy::BattleStats do
  describe '#print' do
    it 'prints context stats' do
      expect(subject.print(10, 5, nil)).to eq "Damage: 10\nHealth: 5"
    end
  end

end
