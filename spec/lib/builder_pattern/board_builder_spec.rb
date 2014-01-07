require 'spec_helper'

describe Builder::BoardBuilder do
  let(:builder) { Builder::BoardBuilder.new(2, 5, :easy) }
  let(:board) { builder.board }

  it 'has a board' do
    expect(board).to be_instance_of(Builder::Board)
  end

  describe '#add_tiles' do

    it 'creates_tiles' do
      expect { builder.add_tiles(:plain, 3) }
      .to change{ board.tiles.size }.by 3
    end
  end
end
