require 'rails_helper'

RSpec.describe "When I visit an amusement park's show page" do
  before(:each) do
    @park = AmusePark.create!(name: "King's Island", price: 85.00)
    @ride1 = @park.rides.create!(name: "The Beast", rating: 8)
    @ride2 = @park.rides.create!(name: "Lightning Racer", rating: 7)
    @ride3 = @park.rides.create!(name: "The Great Bear", rating: 5)
    
    visit "/amuse_parks/#{@park.id}"
  end
  
  it "I see its name and admission price" do
    expect(page).to have_content(@park.name)
    expect(page).to have_content("Admission: $#{@park.price}")
    # expect(page).to have_content("Admission: $85.0")
  end

  it "I see an alphabetical list of all its rides" do
    #need to test for order in an array -- in model?
      within "#park_rides-#{@park.id}" do
        expect(page).to have_content(@ride2.name)
        expect(page).to have_content(@ride1.name)
        expect(page).to have_content(@ride3.name)
      end

  end

  it "I see average thrill rating of all its rides" do
    expected = "Average Thrill Rating of Rides: 6.7/10"
    
    expect(page).to have_content(expected)
  end
end
