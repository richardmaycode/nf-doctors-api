class Facility < ApplicationRecord
  enum :status, { "open": 0, "closed": 1 }, validate: true

  has_many :locations, dependent: :destroy

  validates :name, presence: true
end
