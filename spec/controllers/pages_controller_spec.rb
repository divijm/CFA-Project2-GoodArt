require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #artists" do
    it "returns http success" do
      get :artists
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #catalog" do
    it "returns http success" do
      get :catalog
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #thoughts" do
    it "returns http success" do
      get :thoughts
      expect(response).to have_http_status(:success)
    end
  end

end
