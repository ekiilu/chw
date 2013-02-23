require 'spec_helper'

describe "malarialocationreports/new" do
  before(:each) do
    assign(:malarialocationreport, stub_model(Malarialocationreport).as_new_record)
  end

  it "renders new malarialocationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => malarialocationreports_path, :method => "post" do
    end
  end
end
