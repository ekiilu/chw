require 'hiv/hivprocessor'
class Hivcase < ActiveRecord::Base

def executeSmsCommand(smsCommand)
	@newHivCase = Hivprocessor.new(smsCommand)
	return @newHivCase.executeCommand(self)
end 

end
