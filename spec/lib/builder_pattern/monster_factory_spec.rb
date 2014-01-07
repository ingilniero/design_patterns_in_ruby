require 'spec_helper'

describe Builder::MonsterFactory do
  describe '#create_orcs' do
    it 'creates orcs' do
      expect(Builder::MonsterFactory
             .create_orcs(2)
             .count{ |monster| monster.class == Builder::Orc })
      .to eq 2
    end
  end

  describe '#create_globins' do
    it 'creates globins' do
      expect(Builder::MonsterFactory
             .create_globins(2)
             .count{ |monster| monster.class == Builder::Goblin })
      .to eq 2
    end
  end
end
