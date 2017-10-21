require 'rails_helper'

RSpec.describe OpenWeatherMap::CurrentWeather do
  let(:subject) { described_class }
  let(:city_id) { 2172797 }
  let(:app_id)   { "SECRET_API_KEY" }
  let(:api_response) { File.read("spec/fixtures/city_by_id.json") }

  before do
    stub_request(:get, "http://api.openweathermap.org/data/2.5/weather?appid=#{app_id}&id=#{city_id}").
      with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
      to_return(status: 200, body: api_response, headers: {})
  end
  context ".by_city" do
    it "returns weather data for city by ID" do
      expect(subject.by_city(id: city_id)).to eql(JSON.parse(api_response))
    end
  end
end
