require 'spec_helper'

describe Builder::BoardBuilder do
  let(:builder) { Builder::BoardBuilder.new(2, 5, :easy) }
  let(:board) { builder.board }

  it 'has a board' do
    expect(board).to be_instance_of(Builder::Board)
  end

  describe '#add_tiles' do

    context 'when tiles are plain' do
      before { builder.add_tiles(:plain, 3) }

      it 'creates plain tiles' do
        expect(board.tiles.count { |tile| tile.class == Builder::PlainTile })
        .to eq 3
      end
    end

    context 'when tiles are trap' do
      before { builder.add_tiles(:trap, 3) }

      it 'creates trap tiles' do
        expect(board.tiles.count { |tile| tile.class == Builder::TrapTile })
        .to eq 3
      end
    end
  end

  describe '#add_monsters' do
    context 'orcs' do
      before { builder.add_monsters(:orc, 2) }

      it 'creates orcs' do
        expect(board.monsters.count{ |monster| monster.class == Builder::Orc })
        .to eq 2
      end
    end

    context 'globins' do
      before { builder.add_monsters(:globin, 2) }

      it 'creates globins' do
        expect(board.monsters.
               count{ |monster| monster.class == Builder::Goblin })
        .to eq 2
      end
    end
  end
end
