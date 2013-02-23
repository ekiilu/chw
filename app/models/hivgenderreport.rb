require 'hiv/genderrpt'
class Hivgenderreport < ActiveRecord::Base

def drawGenderGraph(title)
@hiv_gender_rpt = Hivgenderrpt.new
@hiv_gender_rpt.executeCommand(title) #draw a graph with the title command 
end

end
