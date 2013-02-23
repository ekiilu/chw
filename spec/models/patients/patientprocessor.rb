require 'spec_helper'
describe Patientprocessor do

#Before each example spec create a new instance class of patient processor 

it "Validates Sms Add New Patient Command" do 
@textmessageparse = Patientprocessor.new("New Patient,Eric Kiilu,M,1923")
@textmessageparse.validNewPatientCommand?.should == true
end 

 
it "in Validates Lack of  patient name " do 
@textmessageparse = Patientprocessor.new("New Patient,,M,1923")
@textmessageparse.validNewPatientCommand?.should ==false
end 
pending
it "Should register a new patient successfully" do 
@textmessageparse = Patientprocessor.new("New Patient,Eric Kiilu,M,1923")
end 

end 
