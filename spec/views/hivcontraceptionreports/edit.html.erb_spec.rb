require 'spec_helper'

describe "hivcontraceptionreports/edit" do
  before(:each) do
    @hivcontraceptionreport = assign(:hivcontraceptionreport, stub_model(Hivcontraceptionreport))
  end

  it "renders the edit hivcontraceptionreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hivcontraceptionreports_path(@hivcontraceptionreport), :method => "post" do
    end
  end
end
