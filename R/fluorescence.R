dyeFluorescence <- function(x, card, dye=ECMCqPCR::dyes){
    dye <- match.arg(dye)
    cycles <- sort(unique(x$cycle))
    wells <- as.character(levels(x$well))
    output <- matrix(as.numeric(NA), nrow=length(cycles), ncol=length(wells), dimnames=list(cycles, wells))
    x <- x[x$card==card,]
    output[cbind(x$cycle, as.character(x$well))] <- x[[dye]]
    class(output) <- c('fluorescence', 'matrix')
    return(output)
}

fluorescence <- function(x, card){
    output <- sapply(ECMCqPCR::dyes, function(dye){dyeFluorescence(x, card=card, dye=dye)}, simplify=FALSE)
    class(output) <- c('dyepair', 'list')
    return(output)
}
