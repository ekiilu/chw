require "spec_helper"

describe HivcasesController do
  describe "routing" do

    it "routes to #index" do
      get("/hivcases").should route_to("hivcases#index")
    end

    it "routes to #new" do
      get("/hivcases/new").should route_to("hivcases#new")
    end

    it "routes to #show" do
      get("/hivcases/1").should route_to("hivcases#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hivcases/1/edit").should route_to("hivcases#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hivcases").should route_to("hivcases#create")
    end

    it "routes to #update" do
      put("/hivcases/1").should route_to("hivcases#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hivcases/1").should route_to("hivcases#destroy", :id => "1")
    end

  end
end
