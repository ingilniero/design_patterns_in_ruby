module Proxy
  class RobotProxy
    def initialize(robot, operator)
      @robot = robot
      @operator = operator
    end

    def method_missing(name, *args)
      @robot.send(name, *args)
    end

    def execute
      check_access
      @robot.execute
    end

    def check_access
      raise 'Robot Apocalypsis' unless @operator.vehicles.include? :robot
    end
  end
end
