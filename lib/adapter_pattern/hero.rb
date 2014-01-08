module Adapter
  class Hero
    attr_accessor :level, :exp, :quests

    def initialize(attrs = {})
      @level = attrs.fetch(:level, 1)
      @exp = 0
      @quests = []
    end

    def take_quest(quest)
      @quests << (quest.hero = self)
    end

    def finish_quest(quest)
      quest.finish
      @quests.pop
    end

    # complex logic
  end
end
