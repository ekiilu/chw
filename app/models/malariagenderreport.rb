require 'malaria/genderrpt'
class Malariagenderreport < ActiveRecord::Base

def drawGenderGraph(title)
@malaria_gender_rpt = Genderrpt.new
@malaria_gender_rpt.executeCommand(title) #draw a graph with the title command 
end

end
