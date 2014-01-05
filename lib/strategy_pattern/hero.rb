module Strategy
  class Hero
    attr_reader :damage, :health, :skills

    def initialize
      @damage = 10
      @health = 5

      @skills = [:stealth, :driving, :intimidation]
    end

    def print_stats
      "Damage: #{damage}\nHealth: #{health}"
    end

    def print_skills
      skills.inject(""){ |result, skill| result + skill.to_s.capitalize + "\n" }
    end
  end
end
