require 'tb/locationrpt'

class Tblocationreport < ActiveRecord::Base

def drawLocationGraph(locationName,locationId,year)
@tb_location_rpt = Tblocationrpt.new
@tb_location_rpt.executeCommand(locationName,locationId,year) #draw a graph with the title command 
end


end
