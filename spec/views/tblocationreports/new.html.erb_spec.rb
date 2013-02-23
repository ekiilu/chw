require 'spec_helper'

describe "tblocationreports/new" do
  before(:each) do
    assign(:tblocationreport, stub_model(Tblocationreport).as_new_record)
  end

  it "renders new tblocationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tblocationreports_path, :method => "post" do
    end
  end
end
