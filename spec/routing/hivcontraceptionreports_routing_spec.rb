require "spec_helper"

describe HivcontraceptionreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/hivcontraceptionreports").should route_to("hivcontraceptionreports#index")
    end

    it "routes to #new" do
      get("/hivcontraceptionreports/new").should route_to("hivcontraceptionreports#new")
    end

    it "routes to #show" do
      get("/hivcontraceptionreports/1").should route_to("hivcontraceptionreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hivcontraceptionreports/1/edit").should route_to("hivcontraceptionreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hivcontraceptionreports").should route_to("hivcontraceptionreports#create")
    end

    it "routes to #update" do
      put("/hivcontraceptionreports/1").should route_to("hivcontraceptionreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hivcontraceptionreports/1").should route_to("hivcontraceptionreports#destroy", :id => "1")
    end

  end
end
