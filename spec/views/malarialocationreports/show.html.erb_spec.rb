require 'spec_helper'

describe "malarialocationreports/show" do
  before(:each) do
    @malarialocationreport = assign(:malarialocationreport, stub_model(Malarialocationreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
