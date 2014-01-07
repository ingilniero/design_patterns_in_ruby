module Builder
  class Board
    attr_accessor :width, :height, :difficulty, :tiles, :monsters

    def initialize(attrs = {})
      @width = attrs.fetch(:width, 3)
      @height = attrs.fetch(:height,3)
      @difficulty = attrs.fetch(:difficulty, :easy)
      @tiles = attrs.fetch(:tiles, [])
      @monsters = attrs.fetch(:monsters, [])
    end
  end
end
