require 'hiv/locationrpt'
class Hivlocationreport < ActiveRecord::Base


def drawLocationGraph(locationName,locationId,year)
@hiv_location_rpt = Hivlocationrpt.new
@hiv_location_rpt.executeCommand(locationName,locationId,year) #draw a graph with the title command 
end


end
