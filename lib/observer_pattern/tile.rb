module Observer
  class Tile
    def initialize(attrs = {})
      @cursed = attrs.fetch(:cursed, false)
    end

    def cursed?
      @cursed
    end

    def activate_curse(hero)
      hero.damage 10
    end

  end
end
