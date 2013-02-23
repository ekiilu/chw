require 'spec_helper'

describe "communityworker/new.html.erb" do 


let(:communityworker) {mock_model("Communityworker",:firstname => "First Name").as_new_record}

before do
assign(:communityworker,communityworker)
end 

it "renders the form to add a new community health worker" do
  render
  rendered.should have_selector("form",
  :method => "post",
  :action => communityworkers_path
) do |form|
form.should have_selector("input",:type=>"submit")
end 
end
end  
 

