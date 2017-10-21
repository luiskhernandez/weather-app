class WeatherController < ApplicationController
  def index
    load_city
  end

  private
   def load_city
     @city ||= City.random
   end
end
