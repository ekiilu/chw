require 'spec_helper'

describe "malarialocationreports/edit" do
  before(:each) do
    @malarialocationreport = assign(:malarialocationreport, stub_model(Malarialocationreport))
  end

  it "renders the edit malarialocationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => malarialocationreports_path(@malarialocationreport), :method => "post" do
    end
  end
end
