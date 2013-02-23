require 'spec_helper'

describe "tblocationreports/edit" do
  before(:each) do
    @tblocationreport = assign(:tblocationreport, stub_model(Tblocationreport))
  end

  it "renders the edit tblocationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tblocationreports_path(@tblocationreport), :method => "post" do
    end
  end
end
