require 'rails_helper'

RSpec.describe Ride, type: :model do
  
  describe "relationships" do
    it {should belong_to :amuse_park}
  end

end