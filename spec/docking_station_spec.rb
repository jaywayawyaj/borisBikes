require 'docking_station'

describe DockingStation do
  let (:station) {DockingStation.new}
  let (:bike) {Bike.new}

  context "#initialize with parameter" do
    let (:docking_station) {DockingStation.new(10)}

    it "should take an argument for capacity" do
      expect(docking_station.capacity).to eql(10)
    end

  end

  context "#initialize without parameter" do
    let (:docking_station) {DockingStation.new}

    it "should return the default value for capacity if no argument is given" do
      expect(docking_station.capacity).to eql(DockingStation::DEFAULT_CAPACITY)
    end

  end

  context "#release_bike" do

    it 'should cause an error if the Docking Station is empty' do
      expect{station.release_bike}.to raise_error
    end

    it 'It responds to release_bike' do
      expect(station).to respond_to(:release_bike)
    end

    it "doesn't release broken bikes if reported broken" do
      bike.report
      expect{station.release_bike(bike)}.to raise_error
    end

    end

  end

  context "#dock" do

    it 'should cause an error if the Docking Station is full' do
      DockingStation::DEFAULT_CAPACITY.times { station.dock(bike) }
      expect{ station.dock(bike) }.to raise_error 'Docking Station Full'
    end

  end
end
