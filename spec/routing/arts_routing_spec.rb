require "rails_helper"

RSpec.describe ArtsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/arts").to route_to("arts#index")
    end

    it "routes to #new" do
      expect(:get => "/arts/new").to route_to("arts#new")
    end

    it "routes to #show" do
      expect(:get => "/arts/1").to route_to("arts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/arts/1/edit").to route_to("arts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/arts").to route_to("arts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/arts/1").to route_to("arts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/arts/1").to route_to("arts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/arts/1").to route_to("arts#destroy", :id => "1")
    end

  end
end
