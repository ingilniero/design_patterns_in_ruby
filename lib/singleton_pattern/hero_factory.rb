require 'singleton'

module Singleton
  class HeroFactory
    include Singleton

    def create_warrior
      Warrior.new
    end

    def create_mage
      Mage.new
    end
  end
end
