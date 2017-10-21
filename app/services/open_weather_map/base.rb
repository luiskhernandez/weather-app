module OpenWeatherMap
  class Base
    include HTTParty
    base_uri ENV['OPEN_WEATHER_MAP_BASE_URL']

    def get_request(uri, options = {})
      puts "+"*50
      perform_request do |opts|
        opts[:query].merge!(options)
        self.class.get(uri,opts)
      end
    end

    private

    def perform_request(&block)
      options = { query: { appid: api_key }, timeout: 5 }
      response = yield(options)
      if response.success?
        response
      else
        raise OpenWeatherMap::ResponseError.new(response.code, response.message)
      end
    end

    def api_key
      @api_key ||= ENV['OPEN_WEATHER_MAP_API_KEY'] || raise('OpenWeatherMap api key is not specified')
    end
  end
end
