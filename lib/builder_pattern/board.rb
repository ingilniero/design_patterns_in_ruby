module Builder
  class Board
    attr_accessor :width, :height, :difficulty, :tiles, :monsters

    def initialize(width, height, difficulty, tiles, monsters)
      @width = width
      @height = height
      @difficulty = difficulty
      @tiles = tiles
      @monsters = monsters
    end
  end
end
