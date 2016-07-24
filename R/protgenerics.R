## from mzR
setGeneric("psms", function(object, ...) standardGeneric("psms"))
setGeneric("peaks", function(object, ...) standardGeneric("peaks"))
setGeneric("modifications", function(object, ...) standardGeneric("modifications"))
setGeneric("database", function(object, ...) standardGeneric("database"))

## from MSnbase
setGeneric("rtime", function(object, ...) standardGeneric("rtime")) 
setGeneric("tic", function(object, ...) standardGeneric("tic"))
setGeneric("spectra", function(object, ...) standardGeneric("spectra"))
setGeneric("intensity", function(object, ...) standardGeneric("intensity"))
setGeneric("mz", function(object, ...) standardGeneric("mz"))

## new 
setGeneric("peptides", function(object, ...) standardGeneric("peptides"))
setGeneric("proteins", function(object, ...) standardGeneric("proteins"))
setGeneric("accessions", function(object, ...) standardGeneric("accessions"))
setGeneric("scans", function(object, ...) standardGeneric("scans"))
setGeneric("mass", function(object, ...) standardGeneric("mass"))
setGeneric("ions", function(object, ...) standardGeneric("ions"))
setGeneric("chromatograms", function(object, ...) standardGeneric("chromatograms"))
setGeneric("chromatogram", function(object, ...) standardGeneric("chromatogram"))
setGeneric("mz<-", function(object, value) standardGeneric("mz<-"))
setGeneric("isCentroided", function(object, ...) standardGeneric("isCentroided"))
