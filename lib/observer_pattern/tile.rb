module Observer
  class Tile
    def initialize(attrs = {})
      @cursed = attrs.fetch(:cursed, false)
    end

    def cursed?
      @cursed
    end

  end
end
