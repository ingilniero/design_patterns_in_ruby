class Warrior
  attr_reader :damage, :abilities

  def initialize
    @damage = 15
    @abilities = [:strike]
  end

  def attack
    "Attacked dealing #{damage} damage"
  end
end

