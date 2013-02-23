require 'spec_helper'

describe "community_health_workers/new" do
  before(:each) do
    assign(:community_health_worker, stub_model(CommunityHealthWorker,
      :firstname => "MyString",
      :lastname => "MyString",
      :middlename => "MyString",
      :phonenumber => "MyString",
      :nationalid => "MyString",
      :gender => "MyString",
      :village => ""
    ).as_new_record)
  end

  it "renders new community_health_worker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => community_health_workers_path, :method => "post" do
      assert_select "input#community_health_worker_firstname", :name => "community_health_worker[firstname]"
      assert_select "input#community_health_worker_lastname", :name => "community_health_worker[lastname]"
      assert_select "input#community_health_worker_middlename", :name => "community_health_worker[middlename]"
      assert_select "input#community_health_worker_phonenumber", :name => "community_health_worker[phonenumber]"
      assert_select "input#community_health_worker_nationalid", :name => "community_health_worker[nationalid]"
      assert_select "input#community_health_worker_gender", :name => "community_health_worker[gender]"
      assert_select "input#community_health_worker_village", :name => "community_health_worker[village]"
    end
  end
end
