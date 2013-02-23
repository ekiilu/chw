require 'spec_helper'

describe "patients/index" do
  before(:each) do
    assign(:patients, [
      stub_model(Patient,
        :firstname => "Firstname",
        :middlename => "Middlename",
        :lastname => "Lastname",
        :communityworker_id => 1
      ),
      stub_model(Patient,
        :firstname => "Firstname",
        :middlename => "Middlename",
        :lastname => "Lastname",
        :communityworker_id => 1
      )
    ])
  end

  it "renders a list of patients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Middlename".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
