module Adapter
  class QuestAdapter
    attr_reader :difficulty
    attr_accessor :hero

    def initialize(old_quest, attrs = {})
      old_quest.difficulty = attrs.fetch(:difficulty, 2)
      @difficulty = old_quest.difficulty
      @old_quest = old_quest
      @hero = nil
    end

    def finish
      @hero.exp += @old_quest.done
    end
  end
end
