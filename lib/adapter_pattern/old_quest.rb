module Adapter
  class OldQuest
    attr_accessor :difficulty, :exp

    def initialize
      @difficulty = 2
      @exp = 10
    end

    def done
      difficulty * exp
    end

    # complex logic
  end
end
