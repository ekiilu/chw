require 'spec_helper'

describe "hivcases/index" do
  before(:each) do
    assign(:hivcases, [
      stub_model(Hivcase,
        :patient_number => "Patient Number",
        :availability_of_contraceptives => "Availability Of Contraceptives",
        :availability_of_drugs => "Availability Of Drugs"
      ),
      stub_model(Hivcase,
        :patient_number => "Patient Number",
        :availability_of_contraceptives => "Availability Of Contraceptives",
        :availability_of_drugs => "Availability Of Drugs"
      )
    ])
  end

  it "renders a list of hivcases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Patient Number".to_s, :count => 2
    assert_select "tr>td", :text => "Availability Of Contraceptives".to_s, :count => 2
    assert_select "tr>td", :text => "Availability Of Drugs".to_s, :count => 2
  end
end
