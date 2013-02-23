require 'spec_helper'

describe "malariapreventationreports/index" do
  before(:each) do
    assign(:malariapreventationreports, [
      stub_model(Malariapreventationreport),
      stub_model(Malariapreventationreport)
    ])
  end

  it "renders a list of malariapreventationreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
