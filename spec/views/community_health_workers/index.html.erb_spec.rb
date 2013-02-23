require 'spec_helper'

describe "community_health_workers/index" do
  before(:each) do
    assign(:community_health_workers, [
      stub_model(CommunityHealthWorker,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :middlename => "Middlename",
        :phonenumber => "Phonenumber",
        :nationalid => "Nationalid",
        :gender => "Gender",
        :village => ""
      ),
      stub_model(CommunityHealthWorker,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :middlename => "Middlename",
        :phonenumber => "Phonenumber",
        :nationalid => "Nationalid",
        :gender => "Gender",
        :village => ""
      )
    ])
  end

  it "renders a list of community_health_workers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Middlename".to_s, :count => 2
    assert_select "tr>td", :text => "Phonenumber".to_s, :count => 2
    assert_select "tr>td", :text => "Nationalid".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
