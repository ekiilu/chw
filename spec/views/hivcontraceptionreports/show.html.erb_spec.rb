require 'spec_helper'

describe "hivcontraceptionreports/show" do
  before(:each) do
    @hivcontraceptionreport = assign(:hivcontraceptionreport, stub_model(Hivcontraceptionreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
