require 'spec_helper'

describe "patients/new" do
  before(:each) do
    assign(:patient, stub_model(Patient,
      :firstname => "MyString",
      :middlename => "MyString",
      :lastname => "MyString",
      :communityworker_id => 1
    ).as_new_record)
  end

  it "renders new patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patients_path, :method => "post" do
      assert_select "input#patient_firstname", :name => "patient[firstname]"
      assert_select "input#patient_middlename", :name => "patient[middlename]"
      assert_select "input#patient_lastname", :name => "patient[lastname]"
      assert_select "input#patient_communityworker_id", :name => "patient[communityworker_id]"
    end
  end
end
