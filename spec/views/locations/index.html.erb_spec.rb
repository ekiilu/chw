require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :ward => "Ward",
        :country => "Country"
      ),
      stub_model(Location,
        :name => "Name",
        :ward => "Ward",
        :country => "Country"
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ward".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
