FactoryBot.define do
  factory :city do
    sequence(:identifier) { |n| n }
    name                  { FFaker::Address.city }
    country               { FFaker::Address.country_code }
    lon                   { FFaker::Geolocation.lng }
    lat                   { FFaker::Geolocation.lat }
  end
end
