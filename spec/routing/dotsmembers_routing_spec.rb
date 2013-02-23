require "spec_helper"

describe DotsmembersController do
  describe "routing" do

    it "routes to #index" do
      get("/dotsmembers").should route_to("dotsmembers#index")
    end

    it "routes to #new" do
      get("/dotsmembers/new").should route_to("dotsmembers#new")
    end

    it "routes to #show" do
      get("/dotsmembers/1").should route_to("dotsmembers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dotsmembers/1/edit").should route_to("dotsmembers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dotsmembers").should route_to("dotsmembers#create")
    end

    it "routes to #update" do
      put("/dotsmembers/1").should route_to("dotsmembers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dotsmembers/1").should route_to("dotsmembers#destroy", :id => "1")
    end

  end
end
