class Textmessageparser 

def initialize(phone,message)


@phone_number = phone
@textmessage = message

@textmessagerecord = Smsmessage.new
@textmessagerecord.phone = @phone_number
@textmessagerecord.message = @textmessage
@textmessagerecord.save

#Split the strings into individual substrings 
@commands = @textmessage.split(',')
@command = @commands[0].downcase #put  in in lower case

#this is the list of all the valid acceptable substrings 
@start_commands = "New Patient,reg dots,rpt malaria,rpt good,rpt hiv,rpt tb"
@start_command_array = @start_commands.split(',')

end


#render
def render

if validatePhone==false
	return "The phone number you are using has not been registered with our system, Kindly contact your center, Thank you"
elsif @command == "new patient"
	@newPatient = Patient.new
	return @newPatient.executeSmsCommand(@phone_number,@textmessage)
elsif @command == "rpt malaria"
	@newMalariaCase = Malariacase.new
	return @newMalariaCase.executeSmsCommand(@textmessage)
elsif @command == "rpt hiv"
	@newHivCase = Hivcase.new
	return @newHivCase.executeSmsCommand(@textmessage)
elsif @command == "rpt tb"
	@newTbCase = Tbcase.new
	return @newTbCase.executeSmsCommand(@textmessage)
elsif @command == "reg dots"
	@newDotsMember = Dotsmember.new
	return @newDotsMember.executeSmsCommand(@textmessage)
else
	return "Unrecoginsed Command"
end 

end 


#validate a year 
def is_valid_year?(date_str, start=1900, ends=2099)
  date_str.grep(/^(\d)+$/) {|date_str| (start..ends).include?(date_str.to_i) }.first
end


#Validate the start command 
def validStartCommand
#Check if the command is valid 
@start_command_array.each do |commands|
#convert to lowercase
commands = commands.downcase

#if a match is found then return true
if @command == commands
return true	
end 
return false 
end 

#if start command is not valid
false
end


#Validate the phone number
def validatePhone
#get a community worker with a specific phone number send
@communityworker = Villageworker.where("phonenumber =?",@phone_number)
if @communityworker.count == 0
return false
end 
true
end 



end
