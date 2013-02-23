require 'hiv/contraceptiverpt'
class Hivcontraceptionreport < ActiveRecord::Base
def drawContraceptionGraph(locationName,locationId,year)
@hiv_contraceptive_rpt = Hivcontraceptiverpt.new
@hiv_contraceptive_rpt.executeCommand(locationName,locationId,year) #draw a graph with the title command 
end

end
