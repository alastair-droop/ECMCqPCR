calculateRn <- function(x){
    if(!is(x, 'dyepair')) stop('x must be a dyepair object')
    output <- x$FAM / x$ROX
    class(output) <- c('Rn', 'matrix')
    return(output)
}
