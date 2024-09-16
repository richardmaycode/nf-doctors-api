class Employee < ApplicationRecord
  belongs_to :location
  has_many :contacts, as: :contactable
end
