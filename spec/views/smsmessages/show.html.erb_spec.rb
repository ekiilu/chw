require 'spec_helper'

describe "smsmessages/show" do
  before(:each) do
    @smsmessage = assign(:smsmessage, stub_model(Smsmessage,
      :phone => "",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/MyText/)
  end
end
