require 'malaria/locationrpt'
class Malarialocationreport < ActiveRecord::Base

def drawLocationGraph(location_name,location_id,year)
@malaria_location_rpt = Locationrpt.new
@malaria_location_rpt.executeCommand(location_name,location_id,year) #draw a graph with the title command 
end

end
