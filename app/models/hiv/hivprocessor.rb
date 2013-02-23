class Hivprocessor
def initialize(rptHivCommand)

#Split the strings into individual substrings 
@commands = rptHivCommand.split(',')
end 
#rpt hiv,[patientId]

#Validate addition of malaria command
def validrptHivCommand?
	if @commands.size < 2
		return false 
	elsif @commands[1].size <=0
		return false
	elsif @commands[2].size <=0
		return false
	elsif @commands[3].size <=0
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
def executeCommand(hivcaseModel)
	@newHivCase = hivcaseModel
	@available_contraceptions = @commands[2].downcase
	@available_drugs = @commands[3].downcase

	#validate the patient command 
	if not validrptHivCommand?
		return "To report an Hiv case send sms command like this rpt hiv,patient id,Yes,Yes"
	elsif  invalidPatientId
		return "invalid Patient Id"
	elsif   not (@available_contraceptions == "no" || @available_contraceptions == "yes")
		return "Send a Yes or No for availabilty of Contraceptives"
	elsif  not (@available_drugs == "yes" || @available_drugs == "no")
		return "Send a Yes for availability of Antiretroviral drugs"
	else 
		
		@newHivCase.date_diagnosed = Time.now #date the HIV was reported 
		@newHivCase.patient_number = @commands[1]


		#get the patient who has the patient_number so that we can get the location of this patient
		@patient_list = Patient.where("patient_number = ?",@commands[1])
		#Find the Patient Location from the community health worker's location this is vital for reporting
		@community_worker_id = @patient_list[0].communityworker_id

		#Find a model that corresponds to this community health worker 
		@model_community_worker = Villageworker.find(@community_worker_id)


		@newHivCase.location_id = @model_community_worker.location_id
		@newHivCase.availability_of_contraceptives = @commands[2]
		@newHivCase.availability_of_drugs = @commands[3]
		@newHivCase.save

		return "Thank you , the Hiv Case has been reported"
	end 
end 

end 


