class Dotrpt

def initialize
end 

#Method to draw the Gender Pie chart
def drawDotsGraph(title)
# Let's hack almost everything
g = Gruff::Bar.new('900x500') # Define a custom size
g.theme_pastel
g.data :Infections, [185, 155, 110, 90, 135,65,76,54,65,65,87,56]
g.data :Infections, [180, 105, 110, 90, 135,65,76,54,65,65,87,56]

g.labels = { 0 => "Jan", 1 => "Feb", 2 => "March", 3 => "April", 4 => "May", 5 => "June",6 => "July" ,
7 => "Aug" ,8 => "Sept",9 => "Oct",10 => "Nov",11 => "Dec"   }
g.write('app/assets/images/dots_report.png')
end 

public
#Execute command to generate the graph 
def executeCommand(title)
	drawDotsGraph(title)
end 

end 


