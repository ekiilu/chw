require 'spec_helper'

describe "hivdrugreports/index" do
  before(:each) do
    assign(:hivdrugreports, [
      stub_model(Hivdrugreport),
      stub_model(Hivdrugreport)
    ])
  end

  it "renders a list of hivdrugreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
