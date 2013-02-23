Given /^the a registered Community Health Worker phone\-number is "([^"]*)"$/ do |arg1|
@villageworker = Villageworker.where("phonenumber = ?",arg1)
@phoneNumber = arg1

end

When /^I receive text "([^"]*)" as text message$/ do |arg1|
@messageparser = Smsmessage.new
@messageparser.render(@phoneNumber,arg1).should eq("Thank you , a new patient has been registered")
end

Then /^a New Patient should be added to the database$/ do
  pending # express the regexp above with the code you wish you had
end

