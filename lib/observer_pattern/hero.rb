module Observer
  class Hero
    attr_reader :health

    def initialize
      @cursed = false
      @health = 10
    end

    def cursed?
      @cursed
    end

    def discover(tile)
      if tile.cursed?
        @cursed = true
        tile.add_cursed self
      end
    end

    def damage(hit)
      @health -= hit
    end
  end
end
