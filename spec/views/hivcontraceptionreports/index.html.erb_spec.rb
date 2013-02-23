require 'spec_helper'

describe "hivcontraceptionreports/index" do
  before(:each) do
    assign(:hivcontraceptionreports, [
      stub_model(Hivcontraceptionreport),
      stub_model(Hivcontraceptionreport)
    ])
  end

  it "renders a list of hivcontraceptionreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
