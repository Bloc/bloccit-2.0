require 'rails_helper'

RSpec.describe Rating, type: :model do
  it { should belong_to :rateable }

  describe ".update_rating" do
    it "creates a non-existent rating" do
      expect(Rating.update_rating("PG")).to_not be_nil
    end
  end
end
