require "spec_helper"

describe MalariacasesController do
  describe "routing" do

    it "routes to #index" do
      get("/malariacases").should route_to("malariacases#index")
    end

    it "routes to #new" do
      get("/malariacases/new").should route_to("malariacases#new")
    end

    it "routes to #show" do
      get("/malariacases/1").should route_to("malariacases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/malariacases/1/edit").should route_to("malariacases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/malariacases").should route_to("malariacases#create")
    end

    it "routes to #update" do
      put("/malariacases/1").should route_to("malariacases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/malariacases/1").should route_to("malariacases#destroy", :id => "1")
    end

  end
end
