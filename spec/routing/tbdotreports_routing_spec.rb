require "spec_helper"

describe TbdotreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/tbdotreports").should route_to("tbdotreports#index")
    end

    it "routes to #new" do
      get("/tbdotreports/new").should route_to("tbdotreports#new")
    end

    it "routes to #show" do
      get("/tbdotreports/1").should route_to("tbdotreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tbdotreports/1/edit").should route_to("tbdotreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tbdotreports").should route_to("tbdotreports#create")
    end

    it "routes to #update" do
      put("/tbdotreports/1").should route_to("tbdotreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tbdotreports/1").should route_to("tbdotreports#destroy", :id => "1")
    end

  end
end
