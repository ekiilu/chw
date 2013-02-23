require 'spec_helper'

describe "patients/show" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient,
      :firstname => "Firstname",
      :middlename => "Middlename",
      :lastname => "Lastname",
      :communityworker_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Middlename/)
    rendered.should match(/Lastname/)
    rendered.should match(/1/)
  end
end
