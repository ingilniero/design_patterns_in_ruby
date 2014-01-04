class Hero
  attr_reader :damage, :abilities

  def initialize
    @damage = damage_rating
    @abilities = occupation_abilities
  end

  def damage_rating
    10
  end

  def occupation_abilities
    []
  end

  def attack
    "Attacked dealing #{damage} damage"
  end
end
