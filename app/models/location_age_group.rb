class LocationAgeGroup < ApplicationRecord
  belongs_to :location
  belongs_to :age_group
end
