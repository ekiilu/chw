require "spec_helper"

describe HivlocationreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/hivlocationreports").should route_to("hivlocationreports#index")
    end

    it "routes to #new" do
      get("/hivlocationreports/new").should route_to("hivlocationreports#new")
    end

    it "routes to #show" do
      get("/hivlocationreports/1").should route_to("hivlocationreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hivlocationreports/1/edit").should route_to("hivlocationreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hivlocationreports").should route_to("hivlocationreports#create")
    end

    it "routes to #update" do
      put("/hivlocationreports/1").should route_to("hivlocationreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hivlocationreports/1").should route_to("hivlocationreports#destroy", :id => "1")
    end

  end
end
