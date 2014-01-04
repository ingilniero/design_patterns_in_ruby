class Hero
  attr_reader :damage, :abilities

  def initialize
    @damage = damage_rating
    @abilities = occupation_abilities
  end

  def damage_rating
    10
  end

  def greet
    greeting = [ "Hello" ]
    greeting << unique_greeting_line
    greeting
  end

  def unique_greeting_line
    raise 'You must define unique_greeting_line'
  end

  def occupation_abilities
    []
  end

  def attack
    "Attacked dealing #{damage} damage"
  end
end
