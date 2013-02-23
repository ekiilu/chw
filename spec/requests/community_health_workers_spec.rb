require 'spec_helper'

describe "CommunityHealthWorkers" do
  describe "GET /community_health_workers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get community_health_workers_path
      response.status.should be(200)
    end
  end
end
