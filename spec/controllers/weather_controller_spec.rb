require 'rails_helper'

RSpec.describe WeatherController, type: :controller do
  let(:cities) { FactoryBot.create_list(:city, 4) }
  let(:city) { cities.first }
  describe "GET index" do
    it 'assings randon city to @city' do
      get :index
      expect(assigns(:city)).to eq(city)
    end
  end
end
