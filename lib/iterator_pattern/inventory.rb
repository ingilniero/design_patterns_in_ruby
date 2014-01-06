module Iterator
  class Inventory
    attr_reader :items

    def initialize
      @items = []
    end

    def add(item)
      @items << item
    end

    def total_cost
      result = 0
      each do |item|
        result += item.cost
      end
      result
    end

    def each
      i = 0
      while i < @items.size
        yield(@items[i])
        i += 1
      end
    end

  end
end
