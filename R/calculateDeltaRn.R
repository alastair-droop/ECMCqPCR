calculateDeltaRn <- function(x, b){
    if(!is(x, 'Rn')) stop('x must be an Rn object')
    if(!is(b, 'baseline')) stop('b must be a baseline object')
    output <- sweep(x, 2, b$value, FUN='-')
    class(output) <- c('dRn', 'Rn', 'matrix')
    return(output)
}
