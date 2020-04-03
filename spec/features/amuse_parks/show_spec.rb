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
      within "#rides-#{@park.id}" do
        expect(page).to have_content(@ride2.name)
        expect(page).to have_content(@ride1.name)
        expect(page).to have_content(@ride3.name)
      end

  end

  it "I see average thrill rating of all its rides" do
    
  end
end





# And I see the names of all the rides that are at that theme park listed in alphabetical order
# And I see the average thrill rating of this amusement park’s rides
 
# Ex: Hershey Park
#     Admissions: $50.00
       
#     Rides: 
#            1. Lightning Racer 
#            2. Storm Runner
#            3. The Great Bear 
 
#     Average Thrill Rating of Rides: 7.8/10