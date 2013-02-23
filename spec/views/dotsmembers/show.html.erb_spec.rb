require 'spec_helper'

describe "dotsmembers/show" do
  before(:each) do
    @dotsmember = assign(:dotsmember, stub_model(Dotsmember,
      :patient_number => "Patient Number",
      :patient_phone => "Patient Phone",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Patient Number/)
    rendered.should match(/Patient Phone/)
    rendered.should match(/Status/)
  end
end
