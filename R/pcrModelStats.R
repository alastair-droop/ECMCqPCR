pcrModelStats <- function(x, mc.cores=1, ...){
    if(!is(x, 'qpcrmodlist')) stop('x must be a qpcrmodlist object')
    output <- do.call(rbind.data.frame, parallel::mclapply(x, function(m){
        res <- try(qpcR::efficiency(m, plot=FALSE, ...), silent=TRUE)
        if(inherits(res, 'try-error')) return(NA)
        return(res)
    }, mc.cores=mc.cores))
    # rownames(output) <- names(x)
    class(output) <- c("qpcrmodlist.stats", "data.frame")
    return(output)
}
