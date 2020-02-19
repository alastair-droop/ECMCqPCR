pcrModelFlatPhaseEnd <- function(x, min=5, offset=2, default=15, mc.cores=1, ...){
    if(!is(x, 'qpcrmodlist')) stop('x must be a qpcrmodlist object')
    output <- pcrModelTakeoff(x, mc.cores=mc.cores, ...)
    output <- sapply(output - offset, max, min)
    output[is.na(output)] <- default
    return(output)
}
