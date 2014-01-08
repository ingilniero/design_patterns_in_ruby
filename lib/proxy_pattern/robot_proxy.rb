module Proxy
  class RobotProxy
    def initialize(robot)
      @robot = robot
    end

    def add
      @robot.add
    end

    def execute
      @robot.execute
    end
  end
end
