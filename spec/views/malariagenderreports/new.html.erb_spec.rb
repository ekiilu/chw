require 'spec_helper'

describe "malariagenderreports/new" do
  before(:each) do
    assign(:malariagenderreport, stub_model(Malariagenderreport).as_new_record)
  end

  it "renders new malariagenderreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => malariagenderreports_path, :method => "post" do
    end
  end
end
