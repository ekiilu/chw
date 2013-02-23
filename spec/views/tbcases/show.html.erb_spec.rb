require 'spec_helper'

describe "tbcases/show" do
  before(:each) do
    @tbcase = assign(:tbcase, stub_model(Tbcase,
      :patient_number => "Patient Number",
      :availability_of_drugs => "Availability Of Drugs"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Patient Number/)
    rendered.should match(/Availability Of Drugs/)
  end
end
