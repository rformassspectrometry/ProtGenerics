# GETTERS

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

# SETTERS

## from mzR

setGeneric("psms<-", function(object, value) standardGeneric("psms<-"))
setGeneric("peaks<-", function(object, value) standardGeneric("peaks<-")) 
setGeneric("modifications<-", function(object, value) standardGeneric("modifications<-"))
setGeneric("database<-", function(object, value) standardGeneric("database<-"))

## from MSnbase
setGeneric("rtime<-", function(object, value) standardGeneric("rtime<-")) 
setGeneric("tic<-", function(object, value) standardGeneric("tic<-"))
setGeneric("spectra<-", function(object, value) standardGeneric("spectra<-"))
setGeneric("intensity<-", function(object, value) standardGeneric("intensity<-"))
setGeneric("mz<-", function(object, value) standardGeneric("mz<-"))

## new 
setGeneric("peptides<-", function(object, value) standardGeneric("peptides<-"))
setGeneric("proteins<-", function(object, value) standardGeneric("proteins<-"))
setGeneric("accessions<-", function(object, value) standardGeneric("accessions<-"))
setGeneric("scans<-", function(object, value) standardGeneric("scans<-"))
setGeneric("mass<-", function(object, value) standardGeneric("mass<-"))
setGeneric("ions<-", function(object, value) standardGeneric("ions<-"))
setGeneric("chromatograms<-", function(object, value) standardGeneric("chromatograms<-")) 
