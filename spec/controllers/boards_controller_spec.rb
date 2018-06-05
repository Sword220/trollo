require 'rails_helper'

RSpec.describe BoardsController, type: :controller do

  let(:valid_attributes) {
    { name: 'Test' }
  }

  let(:invalid_attributes) {
    { name: ''}
  }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Board" do
        expect (
          post :create, params: { board: valid_attributes }
        ).to change(Board, :count).by(1)
      end
    end
  end
end


