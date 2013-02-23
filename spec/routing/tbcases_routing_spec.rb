require "spec_helper"

describe TbcasesController do
  describe "routing" do

    it "routes to #index" do
      get("/tbcases").should route_to("tbcases#index")
    end

    it "routes to #new" do
      get("/tbcases/new").should route_to("tbcases#new")
    end

    it "routes to #show" do
      get("/tbcases/1").should route_to("tbcases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tbcases/1/edit").should route_to("tbcases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tbcases").should route_to("tbcases#create")
    end

    it "routes to #update" do
      put("/tbcases/1").should route_to("tbcases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tbcases/1").should route_to("tbcases#destroy", :id => "1")
    end

  end
end
