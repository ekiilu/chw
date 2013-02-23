require 'malaria/prevention'

class Malariapreventationreport < ActiveRecord::Base
def drawPreventionGraph(title)
@malaria_gender_rpt = Preventionrpt.new
@malaria_gender_rpt.executeCommand(title) #draw a graph with the title command 
end

end
