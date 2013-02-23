require 'spec_helper'

describe "hivcases/new" do
  before(:each) do
    assign(:hivcase, stub_model(Hivcase,
      :patient_number => "MyString",
      :availability_of_contraceptives => "MyString",
      :availability_of_drugs => "MyString"
    ).as_new_record)
  end

  it "renders new hivcase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hivcases_path, :method => "post" do
      assert_select "input#hivcase_patient_number", :name => "hivcase[patient_number]"
      assert_select "input#hivcase_availability_of_contraceptives", :name => "hivcase[availability_of_contraceptives]"
      assert_select "input#hivcase_availability_of_drugs", :name => "hivcase[availability_of_drugs]"
    end
  end
end
