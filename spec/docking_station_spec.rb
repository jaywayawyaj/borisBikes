require 'docking_station'


=begin describe DockingStation do
  it 'It responds to release_bike' do  # Origianl one line method deemed uninformative of test
   it { is_expected.to respond_to (:release_bike) }
end
   it "It returns a working bike" do
     docking_station = DockingStation.new
    expect(docking_station.release_bike.working?.to eq(true))
    end
=end

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
