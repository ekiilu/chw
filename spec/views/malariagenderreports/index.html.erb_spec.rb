require 'spec_helper'

describe "malariagenderreports/index" do
  before(:each) do
    assign(:malariagenderreports, [
      stub_model(Malariagenderreport),
      stub_model(Malariagenderreport)
    ])
  end

  it "renders a list of malariagenderreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
