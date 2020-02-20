wellLevels <- function(x){
    x <- unique(x)
    tryCatch({
        names(x) <- sprintf("%s%s", gsub("^(\\D+)(\\d+)$", "\\1", x, perl=TRUE), sprintf("%02d", as.numeric(gsub("^(\\D+)(\\d+)$", "\\2", x, perl=TRUE))))        
    }, error=function(e){names(x) <- x})
    return(unname(x[sort(names(x), index.return=TRUE)$ix]))
}
