#' Timeseries plotting function
#' 
#' Plot a timeseries by giving the x and y data.
#' 
#' @param xdat dates for the x axis
#' @param ydat data for the y axis
#' @param y.axis.label name to put on the y axis, defaults to "Y Value"
#' 
#' @return plot of timeseries
#' 
plot_ts <- function(xdat, ydat, y.axis.label="Y Value"){
  
  plot(xdat, ydat, xlab = "Date", ylab = y.axis.label, pch=20, 
       col="red", las=1, tck=0.02, axes=FALSE, frame.plot = TRUE)
  
  
  # If dates span > 1 year, change axis label format
  data.years <- as.numeric(format(xdat, "%Y"))
  data.years.uniq <- unique(data.years)
  if(length(data.years.uniq) > 1){
    axis(side = 1, las=1, tck=0.02,
         at = pretty(xdat), labels = format(pretty(xdat), "%D"))
  } else {
    axis(side=1)
  }
  
  axis(side=2, las=1, tck=0.02)
  axis(side=3, las=1, tck=0.02)
  axis(side=4, las=1, tck=0.02)
}
