require 'spec_helper'

describe "tblocationreports/show" do
  before(:each) do
    @tblocationreport = assign(:tblocationreport, stub_model(Tblocationreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
