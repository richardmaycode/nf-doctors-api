class Employee < ApplicationRecord
  PREFIXES = %w[ Dr Professor Mr Miss Mrs ]

  belongs_to :location
  has_many :contacts, as: :contactable
end
