require 'spec_helper'

describe "smsmessages/new" do
  before(:each) do
    assign(:smsmessage, stub_model(Smsmessage,
      :phone => "",
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new smsmessage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => smsmessages_path, :method => "post" do
      assert_select "input#smsmessage_phone", :name => "smsmessage[phone]"
      assert_select "textarea#smsmessage_message", :name => "smsmessage[message]"
    end
  end
end
