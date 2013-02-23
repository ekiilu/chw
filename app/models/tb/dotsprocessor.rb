class Dotsprocessor
def initialize(rptDotsCommand)

#Split the strings into individual substrings 
@commands = rptDotsCommand.split(',')
end 
#rpt hiv,[patientId]

#Validate the Report Tb Command 
def validrptDotsCommand?
	if @commands.size < 3
		return false 
	elsif @commands[1].size <=0
		return false
	elsif @commands[2].size <=0
		return false
	end 
		return true 
end 
#validate if the patient Id send is valid i.e if it exists in the database
def invalidPatientId
@patients =Patient.where("patient_number =?",@commands[1])
	if @patients.size == 0
		return true	
	end 
return false
end 

public
def executeCommand(dotscaseModel)
	@newDotsMember = dotscaseModel
	@patient_phone_number = @commands[2]
	

	#validate the patient command 
	if not validrptTbCommand?
		return "To report an Tb case send sms command like this rpt tb,patient id,Yes or No (For Availability of Drugs)"
	elsif  invalidPatientId
		return "invalid Patient Id"
	elsif   not (@patient_phone_number.size <4)
		return "Invalid Patient Phone Number"
	else 
		
		@newDotsMember.date_diagnosed = Time.now #date the Tb was reported 
		@newDotsMember.patient_number = @commands[1]
		@newDotsMember.patient_phone = @commands[2]
		@newDotsMember.save

		return "Thank you ,patient with Id #{@newDotsMember} has been enrolled in Our Dots Program"
	end 
end 

end 


