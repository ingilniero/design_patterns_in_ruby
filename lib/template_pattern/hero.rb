class Hero
  attr_reader :damage, :abilities

  def initialize
    @damage = 10
    @abilities = []
  end

  def attack
    "Attacked dealing #{damage} damage"
  end
end
