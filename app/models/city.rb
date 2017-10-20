class City < ApplicationRecord
  validates :identifier, presence: true
  validates :lon, presence: true
  validates :lat, presence: true
end
