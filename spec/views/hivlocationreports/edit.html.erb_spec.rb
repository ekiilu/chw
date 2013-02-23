require 'spec_helper'

describe "hivlocationreports/edit" do
  before(:each) do
    @hivlocationreport = assign(:hivlocationreport, stub_model(Hivlocationreport))
  end

  it "renders the edit hivlocationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hivlocationreports_path(@hivlocationreport), :method => "post" do
    end
  end
end
