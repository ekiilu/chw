require 'tb/tbprocessor'
class Tbcase < ActiveRecord::Base

def executeSmsCommand(command)
@newtbCase = Tbprocessor.new(command)
@newtbCase.executeCommand(self)
end 
end
