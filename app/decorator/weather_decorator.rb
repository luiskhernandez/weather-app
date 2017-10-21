class WeatherDecorator
  attr_reader :description, :city_name, :temperature, :wind, :wind_direction

  def initialize(data)
    @description = data["weather"][0]["description"]
    @city_name = data["name"]
    @temperature = data["main"]["temp"]
    @wind = data["wind"]["speed"]
    @wind_direction = data["wind"]["deg"]
  end
end
