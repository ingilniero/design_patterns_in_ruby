require 'forwardable'

module Decorator
  class MasterpieceDecorator
    extend Forwardable

    def_delegator :@object, :use

    def initialize(object)
      @object = object
    end

    def price
      @object.price * 2
    end

    def description
      @object.description + 'Masterpiece.'
    end

  end
end
