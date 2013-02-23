require 'spec_helper'

describe "hivgenderreports/edit" do
  before(:each) do
    @hivgenderreport = assign(:hivgenderreport, stub_model(Hivgenderreport))
  end

  it "renders the edit hivgenderreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hivgenderreports_path(@hivgenderreport), :method => "post" do
    end
  end
end
