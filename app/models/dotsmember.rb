require 'tb/dotsprocessor'
class Dotsmember < ActiveRecord::Base

def executeSmsCommand(smsCommand)
	@new_dots_member = Dotsprocessor.new(smsCommand)
	return @new_dots_member.executeCommand(self)
end 

end
