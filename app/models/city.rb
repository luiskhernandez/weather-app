class City < ApplicationRecord
  validates :identifier, presence: true
  validates :lon, presence: true
  validates :lat, presence: true

  def self.random
    order("RANDOM()").first
  end
end
