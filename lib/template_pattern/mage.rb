class Mage
  attr_reader :damage, :abilities

  def initialize
    @damage = 7
    @abilities = [:magic_arrow]
  end

  def attack
    "Attacked dealing #{damage} damage"
  end
end
