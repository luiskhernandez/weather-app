require 'rails_helper'

RSpec.describe WeatherController, type: :controller do
  let(:city1) { double("City", identifier: 1)}
  let(:api_response) { File.read("spec/fixtures/city_by_id.json") }

  describe "GET index" do
    let (:subject) { get :index }
    before do
      allow(City).to receive(:random).and_return(city1)
      expect(OpenWeatherMap::CurrentWeather).to receive(:by_city).with(id: 1).and_return(api_response)
    end

    it 'assings randon city to @city' do
      subject
      expect(assigns(:city)).to eq(city1)
      expect(assigns(:weather)).to eq(api_response)
    end
  end
end
