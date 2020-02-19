filterBaseline <- function(x, threshold){
    if(!is(x, 'baseline')) stop('x must be an baseline object')
    output <- (x$sd / abs(x$value)) <= threshold
    output[!is.finite(output)] <- FALSE
    return(output)
}
