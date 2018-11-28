require 'docking_station'
describe DockingStation do
  it 'It responds to release_bike' do
    docking_station = DockingStation.new
    expect{docking_station.to respond_to(:release_bike)}
  end

  it 'It returns a working bike' do
    bike = Bike.new
    expect(bike.working?.eql?(true))
  end

  it "It should respond to dock" do
    docking_station = DockingStation.new
    expect{docking_station.to respond_to(:dock)}
  end

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
end
