require "spec_helper"

describe VillageworkersController do
  describe "routing" do

    it "routes to #index" do
      get("/villageworkers").should route_to("villageworkers#index")
    end

    it "routes to #new" do
      get("/villageworkers/new").should route_to("villageworkers#new")
    end

    it "routes to #show" do
      get("/villageworkers/1").should route_to("villageworkers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/villageworkers/1/edit").should route_to("villageworkers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/villageworkers").should route_to("villageworkers#create")
    end

    it "routes to #update" do
      put("/villageworkers/1").should route_to("villageworkers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/villageworkers/1").should route_to("villageworkers#destroy", :id => "1")
    end

  end
end
