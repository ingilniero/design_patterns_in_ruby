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
        tile.subscribe self
      end
    end

    def update(hit)
      @health -= hit
    end
  end
end
