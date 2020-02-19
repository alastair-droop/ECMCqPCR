filterModelShape <- function(x, crit.Rs=0.99){
    if(!is(x, 'qpcrmodlist.stats')) stop('x must be a qmodlist.stats object')
    if('Rsq.ad' %in% colnames(x) == FALSE) {
        output <- rep(FALSE, nrow(x))
    } else {
        output <- x$Rsq.ad >= crit.Rs
        output[is.na(output)] <- FALSE
    }
    names(output) <- rownames(x)
    return(output)
}
