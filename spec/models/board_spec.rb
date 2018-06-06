require 'rails_helper'

RSpec.describe Board, type: :model do
  describe 'attributes' do
    it "has a name" do
      expect(Board.name).to eq("Board")
    end

    it "has a valid factory" do
      expect(FactoryBot.create(:board)).to be_valid
    end

    it "is invalid without a name" do
      expect(FactoryBot.build(:board, name: nil)).to_not be_valid
    end
    
    it "returns a board's name as a string" do
    end
  end

end
