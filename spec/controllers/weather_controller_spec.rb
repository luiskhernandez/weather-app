require 'rails_helper'

RSpec.describe WeatherController, type: :controller do
  let(:city1) { cities.first }

  describe "GET index" do
    let (:subject) { get :index }
    before do
      allow(City).to receive(:random).and_return(city1)
    end

    it 'assings randon city to @city' do
      subject
      expect(assigns(:city)).to eq(city1)
    end
  end
end
