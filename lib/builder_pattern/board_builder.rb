module Builder
  class BoardBuilder
    attr_reader :board

    def initialize(width, height, difficulty)
      @board = Builder::Board.new width: width, height: height, difficulty: difficulty
    end

    def add_tiles(type, number)
      @board.tiles = Builder::TileFactory.create_plain_tiles(number)
    end
  end
end
