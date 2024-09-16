class Location < ApplicationRecord
  belongs_to :facility
  has_many :employees, dependent: :destroy
  has_many :contacts, as: :contactable, dependent: :destroy
  has_many :location_disiplines, dependent: :destroy
  has_many :disiplines, through: :location_disipline
  has_many :location_nf_types, dependent: :destroy
  has_many :nf_types
  has_many :location_age_groups, dependent: :destroy
  has_many :age_groups, through: :location_age_groups
end
