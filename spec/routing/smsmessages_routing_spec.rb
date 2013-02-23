require "spec_helper"

describe SmsmessagesController do
  describe "routing" do

    it "routes to #index" do
      get("/smsmessages").should route_to("smsmessages#index")
    end

    it "routes to #new" do
      get("/smsmessages/new").should route_to("smsmessages#new")
    end

    it "routes to #show" do
      get("/smsmessages/1").should route_to("smsmessages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/smsmessages/1/edit").should route_to("smsmessages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/smsmessages").should route_to("smsmessages#create")
    end

    it "routes to #update" do
      put("/smsmessages/1").should route_to("smsmessages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/smsmessages/1").should route_to("smsmessages#destroy", :id => "1")
    end

  end
end
