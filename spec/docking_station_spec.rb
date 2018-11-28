require 'docking_station'

describe DockingStation do
  it 'It responds to release_bike' do
    docking_station = DockingStation.new
    expect{docking_station.to respond_to(:release_bike)}
  end

  it 'It returns a working bike' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike.working?.eql?(true))
  end
end
