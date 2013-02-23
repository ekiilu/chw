require 'malaria/malariaprocessor'

class Malariacase < ActiveRecord::Base
belongs_to :patients, :foreign_key => :patient_id, :class_name => "Patient"

def executeSmsCommand(command)
@newmalariaCase = Malariaprocessor.new(command)
@newmalariaCase.executeCommand(self)
end 

end 
