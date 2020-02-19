filterRn <- function(x){
    if(!is(x, 'Rn')) stop('x must be an Rn object')
    output <- apply(x, 2, max) >= 1
    output[is.na(output)] <- FALSE
    return(output)
}
