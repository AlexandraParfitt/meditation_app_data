# Just loading a formatting the app data

# Load data
app_data <- read.csv('zen.csv', header = T, stringsAsFactors = F)
# Look at it
dplyr::glimpse(app_data)
# Duration is character
# Looks like format is hours:minutes:seconds

# Could use lubridate:
library(lubridate)
app_data$Duration <- hms(app_data$Duration)
class(app_data$Duration)
# [1] "Period"
# attr(,"package")
# [1] "lubridate"

as.numeric(app_data$Duration) # will convert to seconds 


