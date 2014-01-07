module Builder
  class MonsterFactory

    def self.create_orcs(number)
      monsters = []
      number.times { monsters << Builder::Orc.new }
      monsters
    end

    def self.create_globins(number)
      monsters = []
      number.times { monsters << Builder::Goblin.new }
      monsters
    end
  end
end

module Builder
  class Orc
  end

  class Goblin
  end
end
