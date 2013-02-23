require 'spec_helper'

describe "malariapreventationreports/edit" do
  before(:each) do
    @malariapreventationreport = assign(:malariapreventationreport, stub_model(Malariapreventationreport))
  end

  it "renders the edit malariapreventationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => malariapreventationreports_path(@malariapreventationreport), :method => "post" do
    end
  end
end
