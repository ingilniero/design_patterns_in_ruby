module Factory
  class WarriorParty < Factory::Party
    def create
      Warrior.new
    end
  end
end
