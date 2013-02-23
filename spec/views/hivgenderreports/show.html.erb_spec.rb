require 'spec_helper'

describe "hivgenderreports/show" do
  before(:each) do
    @hivgenderreport = assign(:hivgenderreport, stub_model(Hivgenderreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
