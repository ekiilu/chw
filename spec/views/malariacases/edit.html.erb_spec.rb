require 'spec_helper'

describe "malariacases/edit" do
  before(:each) do
    @malariacase = assign(:malariacase, stub_model(Malariacase,
      :patient_id => 1,
      :communityworker_id => 1
    ))
  end

  it "renders the edit malariacase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => malariacases_path(@malariacase), :method => "post" do
      assert_select "input#malariacase_patient_id", :name => "malariacase[patient_id]"
      assert_select "input#malariacase_communityworker_id", :name => "malariacase[communityworker_id]"
    end
  end
end
