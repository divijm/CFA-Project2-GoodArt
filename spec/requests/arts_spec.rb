require 'rails_helper'

RSpec.describe "Arts", type: :request do
  describe "GET /arts" do
    it "works! (now write some real specs)" do
      get arts_path
      expect(response).to have_http_status(200)
    end
  end
end
