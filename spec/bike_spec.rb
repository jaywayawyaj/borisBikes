require 'bike'

 describe Bike do
   describe "#working?" do
    let (:bike) {Bike.new}
    
    it {should respond_to :working?}

    it 'It returns a working bike' do
      expect(bike.working?).eql?(true)
    end
  end
 end
