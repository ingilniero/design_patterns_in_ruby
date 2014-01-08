module Decorator
  class MasterpieceDecorator

    def initialize(object)
      @object = object
    end

    def price
      @object.price * 2
    end

    def description
      @object.description + 'Masterpiece.'
    end

    def use
      @object.use
    end

  end
end
