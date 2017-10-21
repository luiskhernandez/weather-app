require 'rails_helper'

RSpec.describe WeatherDecorator do
  let(:api_response)  { JSON.parse File.read("spec/fixtures/city_by_id.json") }
  let(:subject)       { WeatherDecorator.new(api_response) }

  it "formats the weather description" do
    expect(subject.description).to eq("scattered clouds")
  end

  it "retunts the city name" do
    expect(subject.city_name).to eq("Cairns")
  end

  it "retunts the temperature" do
    expect(subject.temperature).to eq(300.15)
  end

  it "retunts the wind speed" do
    expect(subject.wind).to eq(3.6)
  end

  it "retunts the wind direction" do
    expect(subject.wind_direction).to eq(160)
  end
end
