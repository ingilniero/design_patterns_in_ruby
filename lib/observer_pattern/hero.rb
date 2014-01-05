module Observer
  class Hero
    def initialize
      @cursed = false
    end

    def cursed?
      @cursed
    end

    def discover(tile)
      @cursed = true if tile.cursed?
    end
  end
end
