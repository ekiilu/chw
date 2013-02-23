require "spec_helper"

describe MalariapreventationreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/malariapreventationreports").should route_to("malariapreventationreports#index")
    end

    it "routes to #new" do
      get("/malariapreventationreports/new").should route_to("malariapreventationreports#new")
    end

    it "routes to #show" do
      get("/malariapreventationreports/1").should route_to("malariapreventationreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/malariapreventationreports/1/edit").should route_to("malariapreventationreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/malariapreventationreports").should route_to("malariapreventationreports#create")
    end

    it "routes to #update" do
      put("/malariapreventationreports/1").should route_to("malariapreventationreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/malariapreventationreports/1").should route_to("malariapreventationreports#destroy", :id => "1")
    end

  end
end
