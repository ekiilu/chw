class Malariaprocessor
def initialize(createMalariaCommand)

#Split the strings into individual substrings 
@commands = createMalariaCommand.split(',')
end 
#rpt malaria,[patientId]

#Validate addition of malaria command
def validNewMalariaCommand?
	if @commands.size < 2
		return false 
	elsif @commands[1].size <=0
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
def executeCommand(malariacaseModel)
	@newMalariaCase = malariacaseModel
	#validate the patient command 
	if not validNewMalariaCommand?
		return "To report a malaria case send sms command like this report 			malaria,patient id"
	elsif  invalidPatientId
		return "invalid Patient Id"
	else 
		
		#get the patient who has the patient_number so that we can get the location of this patient
		@patient_list = Patient.where("patient_number = ?",@commands[1])
		#Find the Patient Location from the community health worker's location this is vital for reporting
		@community_worker_id = @patient_list[0].communityworker_id

		#Find a model that corresponds to this community health worker 
		@model_community_worker = Villageworker.find(@community_worker_id)


		@newMalariaCase.date_diagnosed = Time.now
		@newMalariaCase.location_id = @model_community_worker.location_id
		@newMalariaCase.patient_number = @commands[1]
		@newMalariaCase.save

		return "Thank you the malaria case has been reported"
	end 
end 

end 


