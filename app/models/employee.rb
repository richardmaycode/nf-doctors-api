class Employee < ApplicationRecord
  PREFIXES = %w[ Dr Professor Mr Miss Mrs Ms "" ]

  belongs_to :location
  has_one :facility, through: :location
  has_many :contacts, as: :contactable

  def display_name
    [ prefix, name, suffix ].join(" ")
  end
end
