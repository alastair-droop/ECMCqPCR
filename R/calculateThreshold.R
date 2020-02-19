calculateThreshold <- function(x){
    if(!is(x, 'baseline')) stop('x must be a baseline object')
    return(mean(x$value + (10 * x$sd), na.rm=TRUE))
}
