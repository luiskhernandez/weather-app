class WeatherController < ApplicationController
  def index
    load_weather
  end

  private
   def city
     @city ||= City.random
   end

   def load_weather
     @weather = OpenWeatherMap::CurrentWeather.by_city(id: city.identifier)
   end
end
