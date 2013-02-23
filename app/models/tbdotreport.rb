require 'tb/dotrpt'
class Tbdotreport < ActiveRecord::Base

def drawDotsGraph(title)
@tb_dots_rpt = Dotrpt.new
@tb_dots_rpt.executeCommand(title) #draw a graph with the title command 
end


end
