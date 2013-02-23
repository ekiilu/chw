require "spec_helper"

describe CommunityHealthWorkersController do
  describe "routing" do

    it "routes to #index" do
      get("/community_health_workers").should route_to("community_health_workers#index")
    end

    it "routes to #new" do
      get("/community_health_workers/new").should route_to("community_health_workers#new")
    end

    it "routes to #show" do
      get("/community_health_workers/1").should route_to("community_health_workers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/community_health_workers/1/edit").should route_to("community_health_workers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/community_health_workers").should route_to("community_health_workers#create")
    end

    it "routes to #update" do
      put("/community_health_workers/1").should route_to("community_health_workers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/community_health_workers/1").should route_to("community_health_workers#destroy", :id => "1")
    end

  end
end
