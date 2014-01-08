module Proxy
  class RobotProxy
    def initialize(operator)
      @operator = operator
    end

    def method_missing(name, *args)
      robot.send(name, *args)
    end

    def execute
      check_access
      robot.execute
    end

    def check_access
      raise 'Robot Apocalypsis' unless @operator.vehicles.include? :robot
    end

    def robot
      @robot || Command::Robot.new
    end
  end
end
