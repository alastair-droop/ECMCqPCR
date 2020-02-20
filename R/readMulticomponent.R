readMulticomponent <- function(file, sample){
    x <- read.table(file, sep="\t", header=TRUE, colClasses=c("character", rep("numeric", 3)), na.strings="-", stringsAsFactors=FALSE)
    output <- data.frame(
        "card" = as.factor(sample),
        "well" = ordered(x$well, levels=wellLevels(x$well)),
        "cycle" = x$cycle,
        "ROX" = x$ROX,
        "FAM" = x$FAM
    )
    return(output)
}
