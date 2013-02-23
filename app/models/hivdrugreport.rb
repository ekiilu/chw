require 'hiv/drugsrpt'

class Hivdrugreport < ActiveRecord::Base


def drawDrugGraph(locationName,locationId,year)
@hiv_drug_rpt = Hivdrugrpt.new
@hiv_drug_rpt.executeCommand(locationName,locationId,year) #draw a graph with the title command 
end



end
