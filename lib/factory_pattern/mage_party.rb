module Factory
  class MageParty < Factory::Party
    def create
      Mage.new
    end
  end
end
