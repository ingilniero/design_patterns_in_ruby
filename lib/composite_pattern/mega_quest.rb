module Composite
  class MegaQuest

    def initialize
      @tasks = []
    end

    def add(task)
      @tasks << task
    end

    def reward
      @tasks.inject(0) { |sum, task| sum += task.reward }
    end
  end
end
