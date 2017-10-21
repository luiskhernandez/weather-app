module OpenWeatherMap
  class ResponseError < StandardError
    attr_reader :code, :additional_message, :message

    def initialize(code, additional_message)
      @code = code
      @additional_message = additional_message
      @message = "OpenWeatherMap request failed code: #{code} - msg: #{additional_message}"
    end

    def to_s
      "#{self.class} (code: #{code}) - #{message}"
    end
  end
end
