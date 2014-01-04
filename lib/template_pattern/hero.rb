class Hero
  attr_reader :damage, :abilities

  def initialize(occupation = nil)
    if occupation == :warrior
      @damage = 15
      @abilities = [:strike]
    else
      @damage = 10
      @abilities = []
    end
  end

  def attack
    "Attacked dealing #{damage} damage"
  end
end
