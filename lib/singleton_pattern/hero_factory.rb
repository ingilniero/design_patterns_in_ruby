module Singleton
  class HeroFactory
    @@instance = Singleton::HeroFactory.new

    def self.instance
      @@instance
    end

    def create_warrior
      Warrior.new
    end

    def create_mage
      Mage.new
    end
  end
end
