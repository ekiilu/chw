require 'spec_helper'

describe "hivlocationreports/new" do
  before(:each) do
    assign(:hivlocationreport, stub_model(Hivlocationreport).as_new_record)
  end

  it "renders new hivlocationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hivlocationreports_path, :method => "post" do
    end
  end
end
