module Strategy
  class SkillsStats
    def print(context)
      context.skills.inject(""){ |result, skill| result + skill.to_s.capitalize + "\n" }
    end
  end
end
