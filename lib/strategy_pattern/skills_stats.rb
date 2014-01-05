module Strategy
  class SkillsStats
    def print(damage, health, skills)
      skills.inject(""){ |result, skill| result + skill.to_s.capitalize + "\n" }
    end
  end
end
