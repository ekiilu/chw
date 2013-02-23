require 'spec_helper'

describe "smsmessages/index" do
  before(:each) do
    assign(:smsmessages, [
      stub_model(Smsmessage,
        :phone => "",
        :message => "MyText"
      ),
      stub_model(Smsmessage,
        :phone => "",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of smsmessages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
