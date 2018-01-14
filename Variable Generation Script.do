//Script to generate variables for teenage pregnancy data from cdc.gov in 2015
//Written in Stata 14
//Emily Linebarger

import excel using "C:\Users\elineb\Desktop\Teenage Pregnancy in US Counties Project\Base Data.xlsx", firstrow

gen DIFFERENCE_NHW_91_07 = NONHISPWHITE_2007 - NONHISPWHITE_1991
gen DIFFERENCE_NHB_91_07 = NONHISPBLACK_2007 - NONHISPBLACK_1991
gen DIFFERENCE_HSP_91_07 = HISP_2007 - HISP_1991 

gen DIFFERENCE_NHW_07_15 = NONHISPWHITE_2015 - NONHISPWHITE_2007
gen DIFFERENCE_NHB_07_15 = NONHISPBLACK_2015 - NONHISPWHITE_2007
gen DIFFERENCE_HSP_07_15 = HISP_2015 - HISP_2007 

gen DIFFERENCE_NHW_91_15 = NONHISPWHITE_2015 - NONHISPWHITE_1991
gen DIFFERENCE_NHB_91_15 = NONHISPBLACK_2015 - NONHISPWHITE_1991
gen DIFFERENCE_HSP_91_15 = HISP_2015 - HISP_1991  

export excel using "C:\Users\elineb\Desktop\Teenage Pregnancy in US Counties Project\With Generated Variables.xlsx", firstrow(var) replace 