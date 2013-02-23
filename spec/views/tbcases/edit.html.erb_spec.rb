require 'spec_helper'

describe "tbcases/edit" do
  before(:each) do
    @tbcase = assign(:tbcase, stub_model(Tbcase,
      :patient_number => "MyString",
      :availability_of_drugs => "MyString"
    ))
  end

  it "renders the edit tbcase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tbcases_path(@tbcase), :method => "post" do
      assert_select "input#tbcase_patient_number", :name => "tbcase[patient_number]"
      assert_select "input#tbcase_availability_of_drugs", :name => "tbcase[availability_of_drugs]"
    end
  end
end
