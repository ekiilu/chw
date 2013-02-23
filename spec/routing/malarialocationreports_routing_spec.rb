require "spec_helper"

describe MalarialocationreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/malarialocationreports").should route_to("malarialocationreports#index")
    end

    it "routes to #new" do
      get("/malarialocationreports/new").should route_to("malarialocationreports#new")
    end

    it "routes to #show" do
      get("/malarialocationreports/1").should route_to("malarialocationreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/malarialocationreports/1/edit").should route_to("malarialocationreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/malarialocationreports").should route_to("malarialocationreports#create")
    end

    it "routes to #update" do
      put("/malarialocationreports/1").should route_to("malarialocationreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/malarialocationreports/1").should route_to("malarialocationreports#destroy", :id => "1")
    end

  end
end
