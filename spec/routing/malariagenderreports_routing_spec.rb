require "spec_helper"

describe MalariagenderreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/malariagenderreports").should route_to("malariagenderreports#index")
    end

    it "routes to #new" do
      get("/malariagenderreports/new").should route_to("malariagenderreports#new")
    end

    it "routes to #show" do
      get("/malariagenderreports/1").should route_to("malariagenderreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/malariagenderreports/1/edit").should route_to("malariagenderreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/malariagenderreports").should route_to("malariagenderreports#create")
    end

    it "routes to #update" do
      put("/malariagenderreports/1").should route_to("malariagenderreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/malariagenderreports/1").should route_to("malariagenderreports#destroy", :id => "1")
    end

  end
end
