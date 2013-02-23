class Hivcontraceptiverpt

def initialize
end 

#Method to draw the Gender Pie chart
def drawContraceptiveReportGraph(locationName,locationId,year)
##LINE GRAPH
g = Gruff::Line.new('900x500') #Define a New Graph

@location_n = locationName
@yr = year

if(locationName==nil)
@location_n = " "
elsif year == nil
@yr = " "
end

g.title = "Location Name: " + @location_n #Title for the Graph
g.theme_pastel # Declare a theme from the presets available

#Get data for Contraceptive availablity 

#January
jan_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'january' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#February
feb_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'february' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#March
mar_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'march' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#April
apr_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'april' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#May
may_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'may' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#June
jun_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'june' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#July
jul_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'july' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#August
aug_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'august' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#September
sep_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'september' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#Octomber
oct_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'october' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#November
nov_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'november' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"

#December
dec_hivcon_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'december' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId} and availability_of_contraceptives ='yes'"


@jan_hivcon_cases = Hivcase.count_by_sql(jan_hivcon_sql)
@feb_hivcon_cases = Hivcase.count_by_sql(feb_hivcon_sql)
@mar_hivcon_cases = Hivcase.count_by_sql(mar_hivcon_sql)
@apr_hivcon_cases = Hivcase.count_by_sql(apr_hivcon_sql)
@may_hivcon_cases = Hivcase.count_by_sql(may_hivcon_sql)
@jun_hivcon_cases = Hivcase.count_by_sql(jun_hivcon_sql)
@jul_hivcon_cases = Hivcase.count_by_sql(jul_hivcon_sql)
@aug_hivcon_cases = Hivcase.count_by_sql(aug_hivcon_sql)
@sep_hivcon_cases = Hivcase.count_by_sql(sep_hivcon_sql)
@oct_hivcon_cases = Hivcase.count_by_sql(oct_hivcon_sql)
@nov_hivcon_cases = Hivcase.count_by_sql(nov_hivcon_sql)
@dec_hivcon_cases = Hivcase.count_by_sql(dec_hivcon_sql)

#Graph Data for Contraceptives 
g.data("Contraceptive Availability for year "+ @yr, [@jan_hivcon_cases, @feb_hivcon_cases, @mar_hivcon_cases, @apr_hivcon_cases,@may_hivcon_cases,@jun_hivcon_cases,@jul_hivcon_cases,@aug_hivcon_cases,@sep_hivcon_cases,@oct_hivcon_cases,@nov_hivcon_cases,@dec_hivcon_cases]) 

#Graph Data for Hiv cases

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
may_sql = "SELECT COUNT(*) from hivcases where MonthName(date_diagnosed) = 'may' and Year(date_diagnosed) = '#{year}' and location_id =#{locationId}"
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

g.data("Hiv Cases for year "+ @yr, [@jan_hiv_cases, @feb_hiv_cases, @mar_hiv_cases, @apr_hiv_cases, @may_hiv_cases, @jun_hiv_cases,@jul_hiv_cases,@aug_hiv_cases,@sep_hiv_cases,@oct_hiv_cases,@nov_hiv_cases,@dec_hiv_cases])

g.labels = {0 => 'Jan', 1 => 'Feb', 2 => 'Mar', 3 => 'Apr', 4 => 'May', 5 => 'Jun', 6 => 'July', 7 => 'Aug', 8 => 'Sep', 9 => 'Oct', 10 => 'Nov', 11 => 'Dec'} #Labels for Each of the Graph
g.write('app/assets/images/hiv_contraceptive_report.png')

end 

public
#Execute command to generate the graph 
def executeCommand(locationName,locationId,year)
	drawContraceptiveReportGraph(locationName,locationId,year)
end 

end 


