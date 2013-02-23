require 'spec_helper'

describe "tbdotreports/new" do
  before(:each) do
    assign(:tbdotreport, stub_model(Tbdotreport).as_new_record)
  end

  it "renders new tbdotreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tbdotreports_path, :method => "post" do
    end
  end
end
