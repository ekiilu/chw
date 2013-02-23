require 'spec_helper'

describe "hivdrugreports/show" do
  before(:each) do
    @hivdrugreport = assign(:hivdrugreport, stub_model(Hivdrugreport))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
