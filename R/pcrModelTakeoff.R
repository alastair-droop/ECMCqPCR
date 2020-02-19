pcrModelTakeoff <- function(x, mc.cores=1, ...){
    if(!is(x, 'qpcrmodlist')) stop('x must be a qpcrmodlist object')
    output <- parallel::mclapply(x, function(i){
        if(is.null(i)) return(NA)
        return(qpcR::takeoff(i, ...)$top)
    }, mc.cores=mc.cores)
    names(output) <- names(x)
    return(unlist(output))
}
