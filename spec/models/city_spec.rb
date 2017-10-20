require 'rails_helper'

RSpec.describe City, type: :model do
  it { should allow_value("").for(:name) }
  it { should allow_value("").for(:country) }
  it { should validate_presence_of(:identifier) }
  it { should have_db_index(:name) }
  it { should have_db_index(:identifier) }
  it { should validate_presence_of(:lon) }
  it { should validate_presence_of(:lat) }
end
