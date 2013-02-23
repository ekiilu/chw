require 'spec_helper'

describe "villageworkers/show" do
  before(:each) do
    @villageworker = assign(:villageworker, stub_model(Villageworker,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :middlename => "Middlename",
      :phonenumber => "Phonenumber",
      :nationalid => "Nationalid",
      :male => "Male",
      :village => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Middlename/)
    rendered.should match(/Phonenumber/)
    rendered.should match(/Nationalid/)
    rendered.should match(/Male/)
    rendered.should match(/1/)
  end
end
