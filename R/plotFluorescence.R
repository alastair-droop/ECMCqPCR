plotFluorescence <- function(x, wells=NA, col=ECMCqPCR::dye.cols, ylim=NA, ...){
    if(!is(x, 'dyepair')) stop('x must be a dyepair object')
    if(missing(wells)) wells <- colnames(x$FAM)
    #Get the maximum fluorescence value:
    if(missing(ylim)) ylim <- c(0, max(unlist(x)))
    cycles <- as.numeric(rownames(x$FAM))
    plot(NA, xlim=range(cycles), ylim=ylim, xlab='Cycle', ylab='Fluorescence')
    apply(x$ROX[,wells, drop=FALSE], 2, function(i){lines(x=cycles, y=i, col=col['ROX'], ...)})
    apply(x$FAM[,wells, drop=FALSE], 2, function(i){lines(x=cycles, y=i, col=col['FAM'], ...)})
    invisible(x)
}
