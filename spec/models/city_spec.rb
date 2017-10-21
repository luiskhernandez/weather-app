require 'rails_helper'

RSpec.describe City, type: :model do
  it { should allow_value("").for(:name) }
  it { should allow_value("").for(:country) }
  it { should validate_presence_of(:identifier) }
  it { should have_db_index(:name) }
  it { should have_db_index(:identifier) }
  it { should validate_presence_of(:lon) }
  it { should validate_presence_of(:lat) }

  context ".random" do
    let!(:cities) { FactoryBot.create_list(:city, 4) }
    # Note: Improve this test, there is a small change than its return the same value
    it "loads a random city" do
      first_time  = City.random
      second_time = City.random
      third_time  = City.random
      expect( first_time != second_time || first_time != third_time ).to be_truthy
    end
  end
end
