calculateBaseline <- function(x, start=3, end=15){
    if(!is(x, 'Rn')) stop('x must be an Rn object')
    start <- rep(start, length.out=ncol(x))
    end <- rep(end, length.out=ncol(x))
    value <- sapply(1:ncol(x), function(i){mean(x[(start[i]):(end[i]), i])})
    sd <- sapply(1:ncol(x), function(i){sd(x[(start[i]):(end[i]), i])})
    output <- data.frame('start'=start, 'end'=end, 'value'=value, 'sd'=sd)
    rownames(output) <- colnames(x)
    class(output) <- c('baseline', 'data.frame')
    return(output)
}
