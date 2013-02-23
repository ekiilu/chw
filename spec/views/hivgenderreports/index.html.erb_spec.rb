require 'spec_helper'

describe "hivgenderreports/index" do
  before(:each) do
    assign(:hivgenderreports, [
      stub_model(Hivgenderreport),
      stub_model(Hivgenderreport)
    ])
  end

  it "renders a list of hivgenderreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
