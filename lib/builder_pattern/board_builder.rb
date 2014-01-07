module Builder
  class BoardBuilder
    attr_reader :board

    def initialize(width, height, difficulty)
      @board = Builder::Board.new width: width, height: height, difficulty: difficulty
    end

    def add_tiles(type, number)
      message = "create_#{type}_tiles"
      @board.tiles = Builder::TileFactory.send(message, number)
    end

    def add_monsters(type, number)
      message = "create_#{type}s"
      @board.monsters = Builder::MonsterFactory.send(message, number)
    end
  end
end
