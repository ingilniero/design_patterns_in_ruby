module Strategy
  class Hero
    attr_reader :damage, :health, :skills
    attr_accessor :printer

    def initialize(printer)
      @damage = 10
      @health = 5
      @printer = printer

      @skills = [:stealth, :driving, :intimidation]
    end

    def print_stats
      printer.print(self)
    end

  end
end
