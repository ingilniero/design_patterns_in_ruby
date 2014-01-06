module Command
  class Reactor
    def initialize
      @functional = false
      @fix_commands = %Q{
Installed Hidroelectric Magnetosphere Regulator
Calibrated Uranium-Rod Driver
Tested Jupiter Wave Complier
Amplified Plutonium-Gamma Shield
}
    end

    def functional?
      @functional
    end

    def fix(commands)
      @functional = commands == @fix_commands
    end
  end
end
