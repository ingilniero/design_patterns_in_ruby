module Proxy
  class RobotProxy
    def initialize(robot)
      @robot = robot
    end

    def method_missing(name, *args)
      @robot.send(name, *args)
    end
  end
end
