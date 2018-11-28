require 'docking_station'

describe Bike do
  describe 'It responds to working?' do  # Origianl one line method deemed uninformative of test
   it { is_expected.to respond_to (:working?) }
  end
end
