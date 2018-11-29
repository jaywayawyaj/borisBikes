class DockingStation
  attr_reader :bikes

  # def initialize
  #   @bikes = []
  # end

  def release_bike
    fail "No bikes available" unless @bikes #@bikes.length != 0
    @bikes
  end

  def dock(bike)
    fail 'Docking Station Full' unless @bikes == nil#.length >= 20
    @bikes = bike #s << bike
  end

end

class Bike
  def working?
    true
  end
end
