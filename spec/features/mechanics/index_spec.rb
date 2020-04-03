require 'rails_helper'

RSpec.describe "When I visit a mechanics index page" do
  it "I see a header All Mechanics" do
   visit '/mechanics'

   expect(page).to have_content("All Mechanics")
  end
  
  it "I see a list of mechanics their names and years exp" do
   visit '/mechanics'

     within "#mechanic-#{mech1.id}" do
        expect(page).to have_content(mech1.name)
        expect(page).to have_content(mech1.years_exp)
      end
     
      within "#mechanic-#{mech2.id}" do
        expect(page).to have_content("#{mech2.name} - #{mech2.years_exp} years of experience")
      end
  end


end




# Story 1

# And I see a list of all mechanic’s names and their years of experience
 
 
# Ex: 
#               All Mechanics
 
#     Sam Mills - 10 years of experience 
#     Kara Smith - 11 years of experience
 