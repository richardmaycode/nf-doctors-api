class Facility < ApplicationRecord
  enum :status, { "open": 0, "closed": 1 }, validate: true

  has_many :locations, dependent: :destroy
  has_many :employees, through: :locations
  has_many :contacts, dependent: :destroy

  validates :title, presence: true
end
