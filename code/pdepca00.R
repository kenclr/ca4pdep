#' Set the directory location for the online feature corpus
#' 
#' @param loc the active corpus ("oec", "cpa", or "fn")
#'
#' @return the directory to use
#' @examples
#' fdir("cpa")
fdir <- function(loc){
  if(loc == "oec")
    fcorp <- "http://www.clres.com/db/feats/oec/"
  else if(loc == "cpa")
    fcorp <- "http://www.clres.com/db/feats/cpa/"
  else if(loc == "tpp")
    fcorp <- "http://www.clres.com/db/feats/fn/"
  return (fcorp)
}

#' Creates the cross-tabulation for the feature of the preposition in a corpus
#'  The table counts the number of each feature value by the preposition sense
#'
#' @param corp - the active corpus ("oec", "cpa", or "fn")
#' @param prep - a preposition in the corpus
#' @param feat - a feature, consisting of a word-finding rule, a colon, a feature-extracting rule, and a colon (which obtains the feature's values)
#' @param df - initialize a data frame, if not specified
#'
#' @return a cross-tabulation of sense numbers by feature values
#'
getfeat <- function(corp,prep,feat,df=data.frame()){
  folder <- fdir(corp)
  addr <- paste(folder,prep,sep="")
  ffile <- read.delim(addr, header=FALSE)
  for(i in 1:dim(ffile)[1]){
    inst <- ffile[i,]
    feats <- strsplit(inst,"\30")
    snum <- feats[[1]][2]
    if(!length(mat <- grep(feat, feats[[1]])))
      next
    for(j in 1:length(mat)){
      val <- substring(feats[[1]][mat[j]],nchar(feat)+1)
      if(!val %in% colnames(df) && snum %in% rownames(df))
        df[snum,val] <- 1
      else if(!snum %in% rownames(df))
        df[snum,val] <- 1
      else if(is.na(df[snum,val]))
        df[snum,val] <- 1
      else
        df[snum,val] <- df[snum,val] + 1
    }
  }
  for(i in rownames(df))
    for(j in colnames(df)){
      if(is.na(df[i,j]))
        df[i,j] <- 0
    }
  return (df)
}
