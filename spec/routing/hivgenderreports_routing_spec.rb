require "spec_helper"

describe HivgenderreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/hivgenderreports").should route_to("hivgenderreports#index")
    end

    it "routes to #new" do
      get("/hivgenderreports/new").should route_to("hivgenderreports#new")
    end

    it "routes to #show" do
      get("/hivgenderreports/1").should route_to("hivgenderreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hivgenderreports/1/edit").should route_to("hivgenderreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hivgenderreports").should route_to("hivgenderreports#create")
    end

    it "routes to #update" do
      put("/hivgenderreports/1").should route_to("hivgenderreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hivgenderreports/1").should route_to("hivgenderreports#destroy", :id => "1")
    end

  end
end
