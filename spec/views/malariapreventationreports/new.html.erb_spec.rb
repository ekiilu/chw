require 'spec_helper'

describe "malariapreventationreports/new" do
  before(:each) do
    assign(:malariapreventationreport, stub_model(Malariapreventationreport).as_new_record)
  end

  it "renders new malariapreventationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => malariapreventationreports_path, :method => "post" do
    end
  end
end
