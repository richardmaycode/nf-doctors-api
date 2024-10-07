class Location < ApplicationRecord
  belongs_to :facility
  has_many :employees, dependent: :destroy
  has_many :contacts, as: :contactable, dependent: :destroy
  has_many :location_disiplines, dependent: :destroy
  has_many :disiplines, through: :location_disiplines
  has_many :location_nf_types, dependent: :destroy
  has_many :nf_types, through: :location_nf_types
  has_many :location_age_groups, dependent: :destroy
  has_many :age_groups, through: :location_age_groups

  validates :name, presence: true
  validates :address_line_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

  # validates :location_age_groups, length: { minimum: 1, maximum: 3 }
  # validates :location_nf_types, length: { minimum: 1, maximum: 3 }
  # 
  def display_name
    name
  end
end
