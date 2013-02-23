require 'spec_helper'

describe "tbdotreports/index" do
  before(:each) do
    assign(:tbdotreports, [
      stub_model(Tbdotreport),
      stub_model(Tbdotreport)
    ])
  end

  it "renders a list of tbdotreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
