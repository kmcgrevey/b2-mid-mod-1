require 'rails_helper'

RSpec.describe AmusePark, type: :model do
  before(:each) do
    @park = AmusePark.create!(name: "King's Island", price: 85.00)
    @ride1 = @park.rides.create!(name: "The Beast", rating: 9)
    @ride2 = @park.rides.create!(name: "Lightning Racer", rating: 7)
    @ride3 = @park.rides.create!(name: "The Great Bear", rating: 5)
  end
  
  describe "relationships" do
    it {should have_many :rides}
  end
  
  describe 'instance methods' do
    it ".ordered_rides" do
      #add test
    end
    
    it ".thrill_avg" do
      #add test
      expect(@park.thrill_avg).to eq(7)
    end
  end

end