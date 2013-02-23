class Tblocationrpt

def initialize
end 

#Method to draw the Gender Pie chart
def drawLocationGraph(locationName,locationId,year)
# Let's hack almost everything

#January
#Count the number of malaria cases for january 

#January
january_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'january' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#February
february_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'february' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#March
march_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'march' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#April
april_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'april' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#May
may_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'may' and Year(date_reported) = '2012' and location_id =#{locationId}"
#June
june_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'june' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#july
july_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'july' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#August
august_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'august' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#September
september_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'september' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#October
october_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'octomber' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#November
november_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'november' and Year(date_reported) = '#{year}' and location_id =#{locationId}"
#December
december_sql = "SELECT COUNT(*) from tbcases where MonthName(date_reported) = 'december' and Year(date_reported) = '#{year}' and location_id =#{locationId}"


@jan_tb_cases = Hivcase.count_by_sql(january_sql)
@feb_tb_cases = Hivcase.count_by_sql(february_sql)
@mar_tb_cases = Hivcase.count_by_sql(march_sql)
@apr_tb_cases = Hivcase.count_by_sql(april_sql)
@may_tb_cases = Hivcase.count_by_sql(may_sql)
@jun_tb_cases = Hivcase.count_by_sql(june_sql)
@jul_tb_cases = Hivcase.count_by_sql(july_sql)
@aug_tb_cases = Hivcase.count_by_sql(august_sql)
@sep_tb_cases = Hivcase.count_by_sql(september_sql)
@oct_tb_cases = Hivcase.count_by_sql(october_sql)
@nov_tb_cases = Hivcase.count_by_sql(november_sql)
@dec_tb_cases = Hivcase.count_by_sql(december_sql)



# Let's hack almost everything
g = Gruff::Bar.new('900x500') # Define a custom size
g.theme_pastel

#check see if the location Is nil to prevent error
if locationName == nil
locationName = " "
elsif year == nil
year = " "
end

g.title = "Location Name:"+ locationName

g.data "Tb Cases @"+ year, [@jan_tb_cases, @feb_tb_cases, @mar_tb_cases, @apr_tb_cases, @may_tb_cases,@jun_tb_cases,@jul_tb_cases,@aug_tb_cases,@sep_tb_cases,@oct_tb_cases,@nov_tb_cases,@dec_tb_cases]
g.labels = { 0 => "Jan", 1 => "Feb", 2 => "March", 3 => "April", 4 => "May", 5 => "June",6 => "July" ,
7 => "Aug" ,8 => "Sept",9 => "Oct",10 => "Nov",11 => "Dec"   }



g.write('app/assets/images/tb_location_report.png')
end 

public
#Execute command to generate the graph 
def executeCommand(locationName,locationId,year)
	drawLocationGraph(locationName,locationId,year)
end 

end 


