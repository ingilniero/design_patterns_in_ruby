require 'spec_helper'

describe Builder::TileFactory do
  describe '#create_plain_tiles' do
    it 'creates plain tiles' do
      expect(Builder::TileFactory
             .create_plain_tiles(2)
             .count{ |tile| tile.class == Builder::PlainTile })
      .to eq 2
    end
  end

  describe '#create_trap_tiles' do
    it 'creates trap tiles' do
      expect(Builder::TileFactory
             .create_trap_tiles(2)
             .count{ |tile| tile.class == Builder::TrapTile })
      .to eq 2
    end
  end
end

