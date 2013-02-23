class Genderrpt
#initialize the class with nothing 
def initailize
end 

#Method to draw the Gender Pie chart
def drawGenderReportGraph(title)

# With more options now
g = Gruff::Pie.new('800x400') # Define a custom size
g.sort = false  # Do NOT sort data based on values

g.theme_pastel # Declare a theme from the presets available

g.title = title 

g.data('Men', [5, 10, 24])
g.data('Women', [15, 3, 10])
g.labels = {0 => 'Last year', 1 => 'This year'} # Define labels for each of the "columns" in data

g.write('app/assets/images/malaria_gender_report_pie.png')
end 

public
#Execute command to generate the graph 
def executeCommand(title)
	drawGenderReportGraph(title)
end 

end 


