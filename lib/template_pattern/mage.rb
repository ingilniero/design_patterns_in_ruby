class Mage < Hero
  def damage_rating
    7
  end

  def occupation_abilities
    [:magic_arrow]
  end

  def unique_greeting_line
    'Mage here!'
  end
end
