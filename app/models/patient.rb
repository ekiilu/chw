require 'patients/patientprocessor'

class Patient < ActiveRecord::Base

has_many :malariacases
belongs_to :villageworker,:foreign_key => "communityworker_id"
belongs_to :location

def executeSmsCommand(phone,smscommand)
@patientProcessor = Patientprocessor.new(phone,smscommand)
@patientProcessor.executeCommand(self)
end

end
