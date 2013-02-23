require 'spec_helper'

describe "hivlocationreports/index" do
  before(:each) do
    assign(:hivlocationreports, [
      stub_model(Hivlocationreport),
      stub_model(Hivlocationreport)
    ])
  end

  it "renders a list of hivlocationreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
