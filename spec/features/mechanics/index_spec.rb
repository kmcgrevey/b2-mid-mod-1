require 'rails_helper'

RSpec.describe "When I visit a mechanics index page" do
  it "I see a header All Mechanics" do
   visit '/mechanics'

   expect(page).to have_content("All Mechanics")
  end
  
  it "I see a list of mechanics their names and years exp" do
    mech1 = Mechanic.create!(name: "Sam Mills", years_exp: 10)
    mech2 = Mechanic.create!(name: "Kara Smith", years_exp: 11)
    
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

 