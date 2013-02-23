require 'spec_helper'

describe "hivgenderreports/new" do
  before(:each) do
    assign(:hivgenderreport, stub_model(Hivgenderreport).as_new_record)
  end

  it "renders new hivgenderreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hivgenderreports_path, :method => "post" do
    end
  end
end
