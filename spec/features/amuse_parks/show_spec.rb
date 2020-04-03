require 'rails_helper'

RSpec.describe "When I visit an amusement park's show page" do
  before(:each) do
    @park = AmusePark.create!(name: "King's Island", price: 85.00)
  end
  
  it "I see its name and admission price" do
    visit "/amuse_parks/#{@park.id}"

    expect(page).to have_content(@park.name)
    expect(page).to have_content("Admission: $#{@park.price}")
    # expect(page).to have_content("Admission: $85.0")
  end

  it "I see an alphabetical list of all its rides" do
    #need to test for order in an array -- in model?

  end

  it "I see average thrill rating of all its rides" do
    
  end
end



#     As a visitor, 
# When I visit an amusement park’s show page

# And I see the names of all the rides that are at that theme park listed in alphabetical order
# And I see the average thrill rating of this amusement park’s rides
 
# Ex: Hershey Park
#     Admissions: $50.00
       
#     Rides: 
#            1. Lightning Racer 
#            2. Storm Runner
#            3. The Great Bear 
 
#     Average Thrill Rating of Rides: 7.8/10