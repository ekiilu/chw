require 'spec_helper'

describe "hivdrugreports/new" do
  before(:each) do
    assign(:hivdrugreport, stub_model(Hivdrugreport).as_new_record)
  end

  it "renders new hivdrugreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hivdrugreports_path, :method => "post" do
    end
  end
end
