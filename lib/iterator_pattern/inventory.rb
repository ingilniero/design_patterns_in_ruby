module Iterator
  class Inventory
    include Enumerable

    attr_reader :items

    def initialize
      @items = []
    end

    def add(item)
      @items << item
    end

    def total_cost
      inject(0){ |sum, item| sum += item.cost }
    end

    def each(&block)
      @items.each(&block)
    end

  end
end
