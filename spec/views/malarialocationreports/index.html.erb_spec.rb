require 'spec_helper'

describe "malarialocationreports/index" do
  before(:each) do
    assign(:malarialocationreports, [
      stub_model(Malarialocationreport),
      stub_model(Malarialocationreport)
    ])
  end

  it "renders a list of malarialocationreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
