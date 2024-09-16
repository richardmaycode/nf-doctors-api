class Facility < ApplicationRecord
  enum :status, { "open": 0, "closed": 1 }

  has_many :locations, dependent: :destroy
end
