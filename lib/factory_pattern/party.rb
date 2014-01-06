module Factory
  class Party
    attr_reader :members

    def initialize(attrs = {})
      @members = []
      number = attrs.fetch(:number,0)
      number.times { members << create }
    end

    def create
      Hero.new
    end

  end
end
