module Command

  class Robot
    attr_reader :queue

    def initialize
      @queue = []
    end

    def add(command)
      @queue << command
    end
  end
end
