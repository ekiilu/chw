class Hivlocationrpt

def initialize
end 

#Method to draw the Gender Pie chart
def drawGenderReportGraph(locationName,locationId,year)

#January
#Count the number of malaria cases for january 

#January
january_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'january' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#February
february_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'february' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#March
march_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'march' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#April
april_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'april' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#May
may_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'may' and Year(date_diagnosed) = '2012' and location_id =#{locationId}"
#June
june_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'june' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#july
july_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'july' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#August
august_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'august' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#September
september_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'september' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#October
october_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'octomber' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#November
november_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'november' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
#December
december_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'december' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"


@jan_hiv_cases = Hivcase.count_by_sql(january_sql)
@feb_hiv_cases = Hivcase.count_by_sql(february_sql)
@mar_hiv_cases = Hivcase.count_by_sql(march_sql)
@apr_hiv_cases = Hivcase.count_by_sql(april_sql)
@may_hiv_cases = Hivcase.count_by_sql(may_sql)
@jun_hiv_cases = Hivcase.count_by_sql(june_sql)
@jul_hiv_cases = Hivcase.count_by_sql(july_sql)
@aug_hiv_cases = Hivcase.count_by_sql(august_sql)
@sep_hiv_cases = Hivcase.count_by_sql(september_sql)
@oct_hiv_cases = Hivcase.count_by_sql(october_sql)
@nov_hiv_cases = Hivcase.count_by_sql(november_sql)
@dec_hiv_cases = Hivcase.count_by_sql(december_sql)



# Let's hack almost everything
g = Gruff::Bar.new('900x500') # Define a custom size
g.theme_pastel
g.title = "Location Name:"+ locationName

g.data "Hiv Infections for ", [@jan_hiv_cases, @feb_hiv_cases, @mar_hiv_cases, @apr_hiv_cases, @may_hiv_cases,@jun_hiv_cases,@jul_hiv_cases,@aug_hiv_cases,@sep_hiv_cases,@oct_hiv_cases,@nov_hiv_cases,@dec_hiv_cases]
g.labels = { 0 => "Jan", 1 => "Feb", 2 => "March", 3 => "April", 4 => "May", 5 => "June",6 => "July" ,
7 => "Aug" ,8 => "Sept",9 => "Oct",10 => "Nov",11 => "Dec"   }
g.write('app/assets/images/hiv_location_report_pie.png')
end 

public
#Execute command to generate the graph 
def executeCommand(locationName,locationId,year)
	drawGenderReportGraph(locationName,locationId,year)
end 

end 


