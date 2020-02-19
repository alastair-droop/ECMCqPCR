calculateRefCt <- function(x, wells){
    if(missing(wells)) wells <- names(x)
    ref.vals <- x[wells]
    ref.vals <- ref.vals[is.finite(ref.vals)]
    return(exp(mean(log(ref.vals))))
}
