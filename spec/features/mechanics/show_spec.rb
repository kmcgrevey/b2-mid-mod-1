require 'rails_helper'

RSpec.describe "When I visit a mechanic's show page" do
  before(:each) do
    @park = AmusePark.create!(name: "King's Island", price: 85.00)
    
    @ride1 = @park.rides.create!(name: "The Beast", rating: 8)
    @ride2 = @park.rides.create!(name: "Lightning Racer", rating: 7)
    @ride3 = @park.rides.create!(name: "The Great Bear", rating: 5)

    @mech1 = Mechanic.create!(name: "Sam Mills", years_exp: 10)

    MechanicRide.create!(mechanic_id: @mech1.id, ride_id: @ride1.id)
    MechanicRide.create!(mechanic_id: @mech1.id, ride_id: @ride2.id)
  end
  
  it "I see their name, years of exp, names of all rides working on" do
    visit "/mechanics/#{@mech1.id}"

    expect(page).to have_content(@mech1.name)
    expect(page).to have_content(@mech1.years_exp)
    expect(page).to have_content(@ride1.name)
    expect(page).to have_content(@ride2.name)
  
  end
end


# And I also see a form to add a ride to their workload
# When I fill in that field with an id of an existing ride and hit submit
# I’m taken back to that mechanics show page
# And I see the name of that newly added ride on this mechanics show page
 
# Ex: 
 
# Mechanic: Kara Smith
# Years of Experience: 11
 
# Current rides they’re working on: 
# The Frog Hopper 
# Fahrenheit 
# The Kiss Raise
 
# Add a ride to workload: 
#  _pretent_this_is_a_textfield_
#                        Submit