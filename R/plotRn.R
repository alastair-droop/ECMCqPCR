plotRn <- function(x, wells=NA, col='blue', ylim=NA, log=FALSE, ...){
    if(!is(x, 'Rn')) stop('x must be an Rn object')
    if(missing(wells)) wells <- colnames(x)
    d <- x[, wells, drop=FALSE]
    if(identical(log, TRUE)) d <- suppressWarnings(log10(d))
    if(missing(ylim)) ylim <- range(d, na.rm=TRUE)
    cycles <- as.numeric(rownames(x))
    if(class(x)[1] == 'Rn') label <- 'Rn'
    if(class(x)[1] == 'dRn') label <- 'dRn'
    plot(NA, xlim=range(cycles), ylim=ylim, xlab='Cycle', ylab=label)
    apply(d, 2, function(i){lines(x=cycles, y=i, col=col, ...)})
    invisible(d)    
}
