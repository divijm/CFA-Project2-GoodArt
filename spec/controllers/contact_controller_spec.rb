require 'rails_helper'

RSpec.describe ContactController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #mail" do
    it "returns http success" do
      get :mail
      expect(response).to have_http_status(:success)
    end
  end

end
