module Decorator
  class CommonItem
    attr_reader :price, :description

    def initialize
      @price = 10
      @description = 'Item.'
    end

    def use

    end
  end
end
