module Singleton
  class HeroFactory
    @@instance = nil

    def self.instance
      @@instance ||= Singleton::HeroFactory.new
    end

    def create_warrior
      Warrior.new
    end

    def create_mage
      Mage.new
    end
  end
end
