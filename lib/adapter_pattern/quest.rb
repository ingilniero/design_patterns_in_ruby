module Adapter
  class Quest
    attr_reader :difficulty
    attr_accessor :hero

    def initialize(attrs={})
      @difficulty = attrs.fetch(:difficulty, 3)
      @hero = nil
    end

    def calculate_experience
      difficulty * 50 / @hero.level
    end

    def finish
      @hero.exp += calculate_experience
    end

    # complex logic
  end
end
