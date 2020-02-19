calculateCt <- function(x, threshold, start.cycle){
    if(!is(x, 'dRn')) stop('x must be a dRn object')
    threshold <- rep(threshold, length.out=ncol(x))
    if(missing(start.cycle)) start.cycle <- 1
    start.cycle <- rep(start.cycle, length.out=ncol(x))
    output <- sapply(1:ncol(x), function(i){
        res <- try({
            cycles <- (start.cycle[i]):nrow(x)
            f <- approxfun(x=cycles, y=(x[cycles, i] - threshold[i]))
            r <- uniroot(f, interval=range(cycles))$root
            return(r)
        }, silent=TRUE)
        if(class(res) == 'try-error') res <- NA
        return(res)
    })
    names(output) <- colnames(x)
    return(output)
}
