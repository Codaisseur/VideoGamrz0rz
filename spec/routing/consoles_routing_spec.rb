require "rails_helper"

RSpec.describe ConsolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/consoles").to route_to("consoles#index")
    end

    it "routes to #new" do
      expect(:get => "/consoles/new").to route_to("consoles#new")
    end

    it "routes to #show" do
      expect(:get => "/consoles/1").to route_to("consoles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/consoles/1/edit").to route_to("consoles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/consoles").to route_to("consoles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/consoles/1").to route_to("consoles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/consoles/1").to route_to("consoles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/consoles/1").to route_to("consoles#destroy", :id => "1")
    end

  end
end
