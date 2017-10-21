class WeatherController < ApplicationController
  def index
    load_city
    @weather = OpenStruct.new(description: "", city: "")
  end

  private
   def load_city
     @city ||= City.random
   end
end
