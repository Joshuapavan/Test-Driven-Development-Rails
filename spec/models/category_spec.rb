require 'rails_helper'

RSpec.describe Category, type: :model do

  # Association test
  it "Should have many books" do
    should have_many(:books)
  end

  # Validation test
  it "Should have a name" do
    should validate_presence_of(:name)
  end

  it "Length of the name is atleast 3 characters" do
    should validate_length_of(:name).is_at_least(3)
  end



end
