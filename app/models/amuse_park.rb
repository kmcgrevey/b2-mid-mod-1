class AmusePark < ApplicationRecord
  has_many :rides

  def ordered_rides
    rides.order(:name)
  end

  def thrill_avg
    rides.average(:rating)
  end
end