require 'spec_helper'

describe "community_health_workers/show" do
  before(:each) do
    @community_health_worker = assign(:community_health_worker, stub_model(CommunityHealthWorker,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :middlename => "Middlename",
      :phonenumber => "Phonenumber",
      :nationalid => "Nationalid",
      :gender => "Gender",
      :village => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Middlename/)
    rendered.should match(/Phonenumber/)
    rendered.should match(/Nationalid/)
    rendered.should match(/Gender/)
    rendered.should match(//)
  end
end
