require 'spec_helper'

describe "villageworkers/index" do
  before(:each) do
    assign(:villageworkers, [
      stub_model(Villageworker,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :middlename => "Middlename",
        :phonenumber => "Phonenumber",
        :nationalid => "Nationalid",
        :male => "Male",
        :village => 1
      ),
      stub_model(Villageworker,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :middlename => "Middlename",
        :phonenumber => "Phonenumber",
        :nationalid => "Nationalid",
        :male => "Male",
        :village => 1
      )
    ])
  end

  it "renders a list of villageworkers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Middlename".to_s, :count => 2
    assert_select "tr>td", :text => "Phonenumber".to_s, :count => 2
    assert_select "tr>td", :text => "Nationalid".to_s, :count => 2
    assert_select "tr>td", :text => "Male".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
