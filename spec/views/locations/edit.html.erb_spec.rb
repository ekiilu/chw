require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "MyString",
      :ward => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "input#location_ward", :name => "location[ward]"
      assert_select "input#location_country", :name => "location[country]"
    end
  end
end
