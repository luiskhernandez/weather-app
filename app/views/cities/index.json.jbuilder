json.results @cities do |city|
  json.id city.identifier
  json.text "#{city.country} #{city.name}"
end
