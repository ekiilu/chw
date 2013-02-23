require 'spec_helper'

describe "tbcases/index" do
  before(:each) do
    assign(:tbcases, [
      stub_model(Tbcase,
        :patient_number => "Patient Number",
        :availability_of_drugs => "Availability Of Drugs"
      ),
      stub_model(Tbcase,
        :patient_number => "Patient Number",
        :availability_of_drugs => "Availability Of Drugs"
      )
    ])
  end

  it "renders a list of tbcases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Patient Number".to_s, :count => 2
    assert_select "tr>td", :text => "Availability Of Drugs".to_s, :count => 2
  end
end
