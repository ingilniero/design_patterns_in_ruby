require 'spec_helper'

describe Builder::Board do
  let(:tiles) { double('tiles') }
  let(:monsters) { double('monsters') }

  let(:board) { Builder::Board.new tiles: tiles, monsters: monsters }

  it 'has a width' do
    expect(board.width).to eq 3
  end

  it 'has a height' do
    expect(board.height).to eq 3
  end

  it 'has a difficulty' do
    expect(board.difficulty).to eq :easy
  end

  it 'has monsters' do
    expect(board.monsters).to eq monsters
  end

  it 'has tiles' do
    expect(board.tiles).to eq tiles
  end

end
