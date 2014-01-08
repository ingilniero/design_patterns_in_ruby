module Decorator
  class MagicDecorator

    def initialize(object)
      @object = object
    end

    def price
      @object.price * 3
    end

    def description
      @object.description + 'Magic.'
    end

    def use
      @object.use
    end

  end
end
