class Contact < ApplicationRecord
  enum :method, { phone: 0, fax: 1, email: 2 }, validate: true, default: 0

  belongs_to :contactable, polymorphic: true

  validates :value, presence: true
end
