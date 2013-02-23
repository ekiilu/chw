require 'spec_helper'

describe "dotsmembers/edit" do
  before(:each) do
    @dotsmember = assign(:dotsmember, stub_model(Dotsmember,
      :patient_number => "MyString",
      :patient_phone => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit dotsmember form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dotsmembers_path(@dotsmember), :method => "post" do
      assert_select "input#dotsmember_patient_number", :name => "dotsmember[patient_number]"
      assert_select "input#dotsmember_patient_phone", :name => "dotsmember[patient_phone]"
      assert_select "input#dotsmember_status", :name => "dotsmember[status]"
    end
  end
end
