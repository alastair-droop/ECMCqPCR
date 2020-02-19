filterCt <- function(x, min=3, max=35){
    output <- !is.na(x)
    output[x < min] <- FALSE
    output[x > max] <- FALSE
    return(output)
}
