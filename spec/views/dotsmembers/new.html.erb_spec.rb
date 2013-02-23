require 'spec_helper'

describe "dotsmembers/new" do
  before(:each) do
    assign(:dotsmember, stub_model(Dotsmember,
      :patient_number => "MyString",
      :patient_phone => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new dotsmember form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dotsmembers_path, :method => "post" do
      assert_select "input#dotsmember_patient_number", :name => "dotsmember[patient_number]"
      assert_select "input#dotsmember_patient_phone", :name => "dotsmember[patient_phone]"
      assert_select "input#dotsmember_status", :name => "dotsmember[status]"
    end
  end
end
