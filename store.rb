class Store < ApplicationRecord
  has_many :ratings

  validates :name, presence: true
  validates :address, presence: true
end
