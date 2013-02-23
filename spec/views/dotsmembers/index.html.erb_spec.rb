require 'spec_helper'

describe "dotsmembers/index" do
  before(:each) do
    assign(:dotsmembers, [
      stub_model(Dotsmember,
        :patient_number => "Patient Number",
        :patient_phone => "Patient Phone",
        :status => "Status"
      ),
      stub_model(Dotsmember,
        :patient_number => "Patient Number",
        :patient_phone => "Patient Phone",
        :status => "Status"
      )
    ])
  end

  it "renders a list of dotsmembers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Patient Number".to_s, :count => 2
    assert_select "tr>td", :text => "Patient Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
