require 'forwardable'

module Decorator
  class MagicDecorator
    extend Forwardable

    def_delegator :@object, :use

    def initialize(object)
      @object = object
    end

    def price
      @object.price * 3
    end

    def description
      @object.description + 'Magic.'
    end

  end
end
