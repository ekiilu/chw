require 'spec_helper'

describe "hivcases/show" do
  before(:each) do
    @hivcase = assign(:hivcase, stub_model(Hivcase,
      :patient_number => "Patient Number",
      :availability_of_contraceptives => "Availability Of Contraceptives",
      :availability_of_drugs => "Availability Of Drugs"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Patient Number/)
    rendered.should match(/Availability Of Contraceptives/)
    rendered.should match(/Availability Of Drugs/)
  end
end
