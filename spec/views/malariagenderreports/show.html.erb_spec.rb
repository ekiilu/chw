require 'spec_helper'

describe "malariagenderreports/show" do
  before(:each) do
    @malariagenderreport = assign(:malariagenderreport, stub_model(Malariagenderreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
