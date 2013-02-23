require 'spec_helper'

describe "malariapreventationreports/show" do
  before(:each) do
    @malariapreventationreport = assign(:malariapreventationreport, stub_model(Malariapreventationreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
