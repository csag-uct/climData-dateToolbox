##
 # FILE climTools.r
 # AUTHOR olivier crespo
 # https://r-forge.r-project.org/projects/xpos-r/
 ###############################################################################
##
 # is that year a leap year?
 ###############################################################################
is.leapYear <- function(year)
{	## trusting R date class
	## otherwise there would be a conflict sooner or later anyway
	leap <- ifelse(format.Date(paste(year,'03','01',sep="-"),"%j")=="060",FALSE,TRUE) 
return(leap);
}

##
 # how many days in a specific month-year
 ###############################################################################
maxNo_days <- function(year,month)
{
	switch(month,
		{	# 1: JAN
		dayNo <- 31
		},{	# 2: FEB
		dayNo <- ifelse(is.leapYear(year),29,28)
		},{	# 3: MAR
		dayNo <- 31
		},{	# 4: APR
		dayNo <- 30
		},{	# 5: MAY
		dayNo <- 31
		},{	# 6: JUN
		dayNo <- 30
		},{	# 7: JUL
		dayNo <- 31
		},{	# 8: AUG
		dayNo <- 31
		},{	# 9: SEP
		dayNo <- 30
		},{	# 10: OCT
		dayNo <- 31
		},{	# 11: NOV
		dayNo <- 30
		},{	# 12: DEC
		dayNo <- 31
		}
	)
return(dayNo)
}

