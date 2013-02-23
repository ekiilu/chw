require 'spec_helper'

describe "hivdrugreports/edit" do
  before(:each) do
    @hivdrugreport = assign(:hivdrugreport, stub_model(Hivdrugreport))
  end

  it "renders the edit hivdrugreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hivdrugreports_path(@hivdrugreport), :method => "post" do
    end
  end
end
