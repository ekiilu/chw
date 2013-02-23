class Tbprocessor
def initialize(rptTbCommand)

#Split the strings into individual substrings 
@commands = rptTbCommand.split(',')
end 
#rpt hiv,[patientId]

#Validate the Report Tb Command 
def validrptTbCommand?
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
def executeCommand(tbcaseModel)
	@newTbCase = tbcaseModel
	@available_drugs = @commands[2]
	

	#validate the patient command 
	if not validrptTbCommand?
		return "To report an Tb case send sms command like this rpt tb,patient id,Yes or No (For Availability of Drugs)"
	elsif  invalidPatientId
		return "invalid Patient Id"
	elsif   not (@available_drugs == "no" || @available_drugs == "yes")
		return "Send a Yes or No for availabilty of Contraceptives"
	else 
		

		#get the patient who has the patient_number so that we can get the location of this patient
		@patient_list = Patient.where("patient_number = ?",@commands[1])
		#Find the Patient Location from the community health worker's location this is vital for reporting
		@community_worker_id = @patient_list[0].communityworker_id

		#Find a model that corresponds to this community health worker 
		@model_community_worker = Villageworker.find(@community_worker_id)

		@newTbCase.date_reported = Time.now #date the Tb was reported 
		@newTbCase.patient_number = @commands[1]
		@newTbCase.location_id = @model_community_worker.location_id
		@newTbCase.availability_of_drugs = @commands[2]
		@newTbCase.save

		return "Thank you , the Tb Case has been reported"
	end 
end 

end 


