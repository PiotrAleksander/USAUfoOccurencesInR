get.location<-function(l) {
  split.location<-tryCatch(
    strsplit(l, ",")[[1]], error=function(e) return(c(NA, NA))
  )
  clean.location<-gsub("^ ", "", split.location)
  if (length(clean.location)>2) {
    return(c(NA, NA))
  }
  else {
    return(clean.location)
  }
}
