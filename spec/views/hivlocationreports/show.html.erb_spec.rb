require 'spec_helper'

describe "hivlocationreports/show" do
  before(:each) do
    @hivlocationreport = assign(:hivlocationreport, stub_model(Hivlocationreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
