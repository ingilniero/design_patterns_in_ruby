module Command

  class Robot
    attr_reader :queue

    def initialize
      @queue = []
    end

    def add(command)
      @queue << command
    end

    def execute
      @queue.inject("\n"){ |result, command| result + command.execute + "\n" }
    end
  end
end
