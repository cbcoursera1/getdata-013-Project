fdecode <- function(feature) {
  
  x <- 0
  output <- vector()
  
  for(x in 1:2) {
    
    feature <- sub("m\\.", "", feature)
    
    if (grepl(
      paste("^", dt_fdecode[x, 1], sep = ""),
      feature,
      ignore.case = T
    )) {
      
      output <- c(
        output,
        paste(
          dt_fdecode[x, 1],
          ": ",
          dt_fdecode[x, 2],
          sep = ""
        )
      )
    } 
  }
  
  for(x in 3:length(dt_fdecode$Code)) {
    
    if (grepl(dt_fdecode[x, 1], feature, ignore.case = T)) {
      
      output <- c(
        output,
        paste(
          dt_fdecode[x, 1],
          ": ",
          dt_fdecode[x, 2],
          sep = ""
        )
      )
      
    }
    
  }
  
  return(c(feature, "m: Mean of all observations for a given subject/activity pair", output))
  
}
