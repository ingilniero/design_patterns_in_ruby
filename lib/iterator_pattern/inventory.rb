module Iterator
  class Inventory
    attr_reader :items

    def initialize
      @items = []
      @iterator = Iterator::InventoryIterator.new self
    end

    def add(item)
      @items << item
    end

    def total_cost
      result = 0
      while @iterator.has_next?
        result += @iterator.next.cost
      end
      result
    end

  end
end
