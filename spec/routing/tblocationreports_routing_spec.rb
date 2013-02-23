require "spec_helper"

describe TblocationreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/tblocationreports").should route_to("tblocationreports#index")
    end

    it "routes to #new" do
      get("/tblocationreports/new").should route_to("tblocationreports#new")
    end

    it "routes to #show" do
      get("/tblocationreports/1").should route_to("tblocationreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tblocationreports/1/edit").should route_to("tblocationreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tblocationreports").should route_to("tblocationreports#create")
    end

    it "routes to #update" do
      put("/tblocationreports/1").should route_to("tblocationreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tblocationreports/1").should route_to("tblocationreports#destroy", :id => "1")
    end

  end
end
