class Preventionrpt
def initialize

end 

#Method to draw the Gender Pie chart
def drawGenderReportGraph(title)
##LINE GRAPH
g = Gruff::Line.new('900x500') #Define a New Graph
g.title = "Malaria Infections for year 2012" #Title for the Graph
g.theme_pastel # Declare a theme from the presets available

g.data("Malaria Cases", [1, 2, 3, 4, 4, 3]) #Graph Data
g.data("Use of Mosquito Nets", [4, 8, 7, 9, 8, 9,5,6,3,4,2,4,2])
g.data("Availability of Drugs", [2, 3, 1, 5, 6, 8,3,5,4,6,5,2])

g.labels = {0 => 'Jan', 1 => 'Feb', 2 => 'Mar', 3 => 'Apr', 4 => 'May', 5 => 'Jun', 6 => 'July', 7 => 'Aug', 8 => 'Sep', 9 => 'Oct', 10 => 'Nov', 11 => 'Dec'} #Labels for Each of the Graph

g.write('app/assets/images/malaria_prevention_report_line.png')
end 

public
#Execute command to generate the graph 
def executeCommand(title)
	drawGenderReportGraph(title)
end 

end 


