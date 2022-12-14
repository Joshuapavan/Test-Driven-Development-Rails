require 'rails_helper'

RSpec.describe Book, type: :model do

  # Association test
  it "Should belong to a category" do
    should belong_to(:category)
  end

  # Validation test
  it "Should validate presence of title and author" do
    should validate_presence_of(:title)
    should validate_presence_of(:author)
    should validate_length_of(:title).is_at_least(3)
  end


end
