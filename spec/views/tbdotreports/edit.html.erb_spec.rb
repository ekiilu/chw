require 'spec_helper'

describe "tbdotreports/edit" do
  before(:each) do
    @tbdotreport = assign(:tbdotreport, stub_model(Tbdotreport))
  end

  it "renders the edit tbdotreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tbdotreports_path(@tbdotreport), :method => "post" do
    end
  end
end
