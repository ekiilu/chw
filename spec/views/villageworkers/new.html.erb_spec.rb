require 'spec_helper'

describe "villageworkers/new" do
  before(:each) do
    assign(:villageworker, stub_model(Villageworker,
      :firstname => "MyString",
      :lastname => "MyString",
      :middlename => "MyString",
      :phonenumber => "MyString",
      :nationalid => "MyString",
      :male => "MyString",
      :village => 1
    ).as_new_record)
  end

  it "renders new villageworker form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => villageworkers_path, :method => "post" do
      assert_select "input#villageworker_firstname", :name => "villageworker[firstname]"
      assert_select "input#villageworker_lastname", :name => "villageworker[lastname]"
      assert_select "input#villageworker_middlename", :name => "villageworker[middlename]"
      assert_select "input#villageworker_phonenumber", :name => "villageworker[phonenumber]"
      assert_select "input#villageworker_nationalid", :name => "villageworker[nationalid]"
      assert_select "input#villageworker_male", :name => "villageworker[male]"
      assert_select "input#villageworker_village", :name => "villageworker[village]"
    end
  end
end
