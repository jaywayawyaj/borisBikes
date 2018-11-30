require 'bike'

describe Bike do
  let (:bike) {Bike.new}

  describe "#working?" do
    it 'It responds to working' do
      expect(bike).to respond_to(:working?)
    end

    it 'It returns a working bike' do
      expect(bike.working?).eql?(true)
    end
  end

  describe "#report" do
    it "responds to #report" do
      expect(bike).to respond_to(:report)
    end


  end
end
