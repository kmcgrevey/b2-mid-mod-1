require 'rails_helper'

RSpec.describe AmusePark, type: :model do
  
  describe "relationships" do
    it {should have_many :rides}
  end
  
  describe 'instance methods' do
    it ".ordered_rides" do
      #add test
    end
  end

end