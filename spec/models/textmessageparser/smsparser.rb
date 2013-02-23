require 'spec_helper'

describe Textmessageparser do

before(:each) do 

@communityworker = Villageworker.new
@communityworker.firstname = "Eric"
@communityworker.lastname = "Kiilu"
@communityworker.middlename ="M"
@communityworker.phonenumber ="+254714136136"
@communityworker.nationalid = "32333"
@communityworker.male = "M"
@communityworker.village = 2
@communityworker.save
end 

it "is a registered phone number" do
@textmessageparse = Textmessageparser.new("+254714136136","New Patient,Eric Kiilu,M,1923")
@textmessageparse.validatePhone.should == true 
end 

it "has valid starting command" do
@textmessageparse = Textmessageparser.new("+254714136136","New Patient,Eric Kiilu,M,1923")
@textmessageparse.validStartCommand.should == true 
end 



end 

