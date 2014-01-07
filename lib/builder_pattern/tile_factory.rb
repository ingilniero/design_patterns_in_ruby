module Builder
  class TileFactory

    def self.create_plain_tiles(number)
     tiles = []
     number.times { tiles << Builder::PlainTile.new }
     tiles
    end

    def self.create_trap_tiles(number)
      tiles = []
      number.times { tiles << Builder::TrapTile.new }
      tiles
    end
  end
end

module Builder
  class PlainTile
  end

  class TrapTile
  end
end
