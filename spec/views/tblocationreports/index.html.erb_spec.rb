require 'spec_helper'

describe "tblocationreports/index" do
  before(:each) do
    assign(:tblocationreports, [
      stub_model(Tblocationreport),
      stub_model(Tblocationreport)
    ])
  end

  it "renders a list of tblocationreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
