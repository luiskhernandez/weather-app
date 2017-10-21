class WeatherController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def index
    load_weather
    render :show
  end

  def show
    load_weather
  end

  private
   def load_city
     params[:id] ? City.find(identifier: params[:id]) :  City.random
   end

   def city
     @city ||= load_city
   end

   def load_weather
     @weather = OpenWeatherMap::CurrentWeather.by_city(id: city.identifier)
   end

   def record_not_found
     flash[:alert] = "Sorry we coudn't find data"
     redirect_to action: :index
   end
end
