* Load data with lowercase variable names
import delimited using "IPB53300N_filtered.csv", case(lower) clear
generate dailydate = date(observation_date, "YMD")
generate mdate = mofd(dailydate)
format mdate %tm
drop observation_date dailydate

* Example analysis using the ipb53300n variable
summarize ipb53300n
