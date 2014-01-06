module Factory
  class Party
    attr_reader :members

    def initialize(attrs = {})
      @members = []
      number = attrs.fetch(:number,0)
      type = attrs.fetch(:type, :unknow)
      number.times { members << create(type) }
    end

    def create(type)
      self.class.const_get(type.to_s.capitalize).new
    end

  end
end
