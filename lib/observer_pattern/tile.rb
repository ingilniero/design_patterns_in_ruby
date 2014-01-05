module Observable
  attr_reader :observers

  def initialize(attrs = {})
    @observers = []
    custom_attributes(attrs)
  end

  def subscribe(observer)
    @observers << observer
  end

  def notify_observers
    observers.each { |observer| observer.update 4 }
  end

end

module Observer
  class Tile
    include Observable

    def custom_attributes(attrs)
      @cursed = attrs.fetch(:cursed, false)
    end

    def cursed?
      @cursed
    end

    def activate_curse
      notify_observers
    end
  end
end
