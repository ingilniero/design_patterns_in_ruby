module Observer
  class Tile
    attr_reader :cursed_creatures

    def initialize(attrs = {})
      @cursed = attrs.fetch(:cursed, false)
      @cursed_creatures = []
    end

    def cursed?
      @cursed
    end

    def add_cursed(creature)
      @cursed_creatures << creature
    end

    def activate_curse
      damage_creatures
    end

    private

    def damage_creatures
      cursed_creatures.each { |creature| creature.damage 4 }
    end

  end
end
