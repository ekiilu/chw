require 'spec_helper'

describe "smsmessages/edit" do
  before(:each) do
    @smsmessage = assign(:smsmessage, stub_model(Smsmessage,
      :phone => "",
      :message => "MyText"
    ))
  end

  it "renders the edit smsmessage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => smsmessages_path(@smsmessage), :method => "post" do
      assert_select "input#smsmessage_phone", :name => "smsmessage[phone]"
      assert_select "textarea#smsmessage_message", :name => "smsmessage[message]"
    end
  end
end
