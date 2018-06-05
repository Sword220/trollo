require 'rails_helper'

RSpec.describe Board, type: :model do
  describe 'attributes' do
    it "has a name" do
      expect(Board).name.to eq("test")
    end
  end
end
