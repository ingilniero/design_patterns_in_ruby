module Observer
  class Tile
    attr_reader :observers

    def initialize(attrs = {})
      @cursed = attrs.fetch(:cursed, false)
      @observers = []
    end

    def cursed?
      @cursed
    end

    def subscribe(observer)
      @observers << observer
    end

    def activate_curse
      notify
    end

    private

    def notify
      observers.each { |observer| observer.update 4 }
    end

  end
end
