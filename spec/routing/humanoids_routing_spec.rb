require "spec_helper"

describe HumanoidsController do
  describe "routing" do

    it "routes to #index" do
      get("/humanoids").should route_to("humanoids#index")
    end

    it "routes to #new" do
      get("/humanoids/new").should route_to("humanoids#new")
    end

    it "routes to #show" do
      get("/humanoids/1").should route_to("humanoids#show", :id => "1")
    end

    it "routes to #edit" do
      get("/humanoids/1/edit").should route_to("humanoids#edit", :id => "1")
    end

    it "routes to #create" do
      post("/humanoids").should route_to("humanoids#create")
    end

    it "routes to #update" do
      put("/humanoids/1").should route_to("humanoids#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/humanoids/1").should route_to("humanoids#destroy", :id => "1")
    end

  end
end
