class Patientprocessor
def initialize(phone,createPatientCommand)

#Split the strings into individual substrings 
@commands = createPatientCommand.split(',')
@phone_number = phone
end 


#Validate new patient command 
def validNewPatientCommand?
	if @commands.size < 4
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
end 


def generate_patientNumber(length=6)  
  chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789'  
  Array.new(length) { chars[rand(chars.length)].chr }.join

end  
public
def executeCommand(patientModel)
	@newpatient = patientModel
	#validate the patient command 
	if validNewPatientCommand?
		@patientnames = @commands[1].split(' ')
		#if the size of the patient names is just two , then we assume that the first 			item in array is the first name, the other 
		#item is the last name of the patient 

		#First lets validate the size of the patient name if its less than two then 			their is an error , if its large than three 		then
		#Their is an error 
		if @patientnames.size <2 or @patientnames.size > 3 
			return "The patient name is invalid, Enter in this format Firstname 				Middlename LastName, Thank you"
		end 
		#If the patient names are valids then Create a new patient and save his/her 			details in the database 
		#If there are only two names for the patient then lets save the names in the 			database
		
		@newpatient.firstname = @patientnames[0]
		
		if @patientnames.size == 2
			@newpatient.lastname = @patientnames[1]
		else 
			@newpatient.middlename = @patientnames[1]
			@newpatient.lastname = @patientnames[2]				
		end 
		#Save the other details of the patient 
		@newpatient.year_of_birth = Time.local(2000,3,3)
		@newpatient.date_added = Time.now
		
		@communityworkerw = Villageworker.where("phonenumber =?",@phone_number)
		
		@newpatient.villageworker = @communityworkerw[0]
		
		@patient_id = generatePatientId
			
		#Assign the patient Id to the generated 
		@newpatient.patient_number = @patient_id 

		#Now lets save the details of the patient in the database 
		@newpatient.save 
		#Tell the community health worker the patient has been successfully been saved in the database
		
		return "#{@newpatient.firstname} . #{@newpatient.lastname[0] } , has been given Patient ID: #{@patient_id}
		     . Thank you for registering #"
	end 
	return "To register a new patient please send your sms like this example format : New Patient,James Kamau,M,1980" 
end 


#Generate Valid Patient ID 
def generatePatientId
@patientId = generate_patientNumber

while Patient.where("patient_number =?",@patientId).size >0
@patientId = generate_patientNumber
end 
return @patientId
end
