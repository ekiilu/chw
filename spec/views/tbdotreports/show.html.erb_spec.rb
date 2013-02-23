require 'spec_helper'

describe "tbdotreports/show" do
  before(:each) do
    @tbdotreport = assign(:tbdotreport, stub_model(Tbdotreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
