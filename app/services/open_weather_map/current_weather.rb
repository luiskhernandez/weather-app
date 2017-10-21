module OpenWeatherMap
  class CurrentWeather < Base
    def self.by_city(id:)
      response = new
      response = response.get_request("/data/2.5/weather", {id: id})
      return JSON.parse(response.body)
    end
  end
end
