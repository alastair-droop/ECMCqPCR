pcrModel <- function(x, mc.cores=1, ...){
    d <- data.frame(
        'cycle' = as.numeric(rownames(x)),
        as.data.frame(x)
    )
    m <- parallel::mclapply(colnames(x), function(w){
        res <- try(qpcR::pcrfit(d[,c('cycle', w)], cyc=1, fluo=2, ...), silent=TRUE)
        if(inherits(res, 'try-error')) return(NULL)
        return(res)
    }, mc.cores=mc.cores)
    names(m) <- colnames(x)
    class(m) <- c("qpcrmodlist", "list")
    return(m)
}
