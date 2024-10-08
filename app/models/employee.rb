class Employee < ApplicationRecord
  PREFIXES = %w[ Dr Professor Mr Miss Mrs ]

  belongs_to :location
  has_many :contacts, as: :contactable

  def display_name
    [ prefix, name, suffix ].join(" ")
  end
end
