require 'spec_helper'

describe "malariagenderreports/edit" do
  before(:each) do
    @malariagenderreport = assign(:malariagenderreport, stub_model(Malariagenderreport))
  end

  it "renders the edit malariagenderreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => malariagenderreports_path(@malariagenderreport), :method => "post" do
    end
  end
end
