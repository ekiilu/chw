require "spec_helper"

describe HivdrugreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/hivdrugreports").should route_to("hivdrugreports#index")
    end

    it "routes to #new" do
      get("/hivdrugreports/new").should route_to("hivdrugreports#new")
    end

    it "routes to #show" do
      get("/hivdrugreports/1").should route_to("hivdrugreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hivdrugreports/1/edit").should route_to("hivdrugreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hivdrugreports").should route_to("hivdrugreports#create")
    end

    it "routes to #update" do
      put("/hivdrugreports/1").should route_to("hivdrugreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hivdrugreports/1").should route_to("hivdrugreports#destroy", :id => "1")
    end

  end
end
