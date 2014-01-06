module Iterator
  class Item
    attr_reader :cost

    def initialize
      @cost = 0
    end

    def update_cost(amount)
      @cost = amount
    end

    def <=>(other)
      cost <=> other.cost
    end
  end
end
