## -------------------------------------------------------------
## Metadata accessors
## -------------------------------------------------------------

setGeneric("ionCount", function(object, ...) standardGeneric("ionCount"))
setGeneric("scanIndex", function(object) standardGeneric("scanIndex"))
setGeneric("precursorMz", function(object) standardGeneric("precursorMz"))
setGeneric("precursorIntensity", function(object) standardGeneric("precursorIntensity"))
setGeneric("precursorCharge", function(object) standardGeneric("precursorCharge"))
setGeneric("acquisitionNum", function(object) standardGeneric("acquisitionNum"))
setGeneric("precAcquisitionNum", function(object) standardGeneric("precAcquisitionNum"))
setGeneric("precScanNum", function(object) standardGeneric("precScanNum"))
setGeneric("msLevel", function(object) standardGeneric("msLevel"))
setGeneric("collisionEnergy", function(object) standardGeneric("collisionEnergy"))
setGeneric("polarity", function(object) standardGeneric("polarity"))
setGeneric("tic", function(object, ...) standardGeneric("tic"))
setGeneric("rtime", function(object, ...) standardGeneric("rtime")) 
setGeneric("centroided", function(object, ...) standardGeneric("centroided"))
setGeneric("smoothed", function(object) standardGeneric("smoothed"))
setGeneric("isCentroided", function(object, ...) standardGeneric("isCentroided"))

## -------------------------------------------------------------
## Raw data accessors
## -------------------------------------------------------------

setGeneric("peaks", function(object, ...) standardGeneric("peaks"))
setGeneric("intensity", function(object, ...) standardGeneric("intensity"))
setGeneric("mz", function(object, ...) standardGeneric("mz"))
setGeneric("spectra", function(object, ...) standardGeneric("spectra"))
setGeneric("scans", function(object, ...) standardGeneric("scans"))
setGeneric("chromatograms", function(object, ...) standardGeneric("chromatograms"))
setGeneric("chromatogram", function(object, ...) standardGeneric("chromatogram"))
setGeneric("mass", function(object, ...) standardGeneric("mass"))
setGeneric("ions", function(object, ...) standardGeneric("ions"))

## -------------------------------------------------------------
## Identification-related accessors
## -------------------------------------------------------------

setGeneric("modifications", function(object, ...) standardGeneric("modifications"))
setGeneric("database", function(object, ...) standardGeneric("database"))
setGeneric("psms", function(object, ...) standardGeneric("psms"))
setGeneric("peptides", function(object, ...) standardGeneric("peptides"))
setGeneric("proteins", function(object, ...) standardGeneric("proteins"))
setGeneric("accessions", function(object, ...) standardGeneric("accessions"))

## -------------------------------------------------------------
## Instrument-related accessors
## -------------------------------------------------------------

setGeneric("msInfo", function(object) standardGeneric("msInfo"))
setGeneric("expemail", function(object) standardGeneric("expemail"))
setGeneric("exptitle", function(object) standardGeneric("exptitle"))
setGeneric("ionSource", function(object) standardGeneric("ionSource"))
setGeneric("ionSourceDetails", function(object) standardGeneric("ionSourceDetails"))
setGeneric("analyser", function(object) standardGeneric("analyser"))
setGeneric("analyzer", function(object) standardGeneric("analyzer"))
setGeneric("analyzerDetails", function(object) standardGeneric("analyzerDetails"))
setGeneric("analyserDetails", function(object) standardGeneric("analyserDetails"))
setGeneric("detectorType", function(object) standardGeneric("detectorType"))
setGeneric("instrumentManufacturer", function(object) standardGeneric("instrumentManufacturer"))
setGeneric("instrumentCustomisations", function(object) standardGeneric("instrumentCustomisations"))
setGeneric("instrumentModel", function(object) standardGeneric("instrumentModel"))


## -------------------------------------------------------------
## Data-processing
## -------------------------------------------------------------

setGeneric("smooth", function(x, ...) standardGeneric("smooth")) ## stats::smooth already exists
setGeneric("processingData", function(object) standardGeneric("processingData"))
setGeneric("combineFeatures", function(object, ...) standardGeneric("combineFeatures")) 

## -------------------------------------------------------------
## IO
## -------------------------------------------------------------

setGeneric("writeMSData", function(object, file, ...) standardGeneric("writeMSData"))

## -------------------------------------------------------------
## Replacement functions
## -------------------------------------------------------------

setGeneric("peaks<-", function(object, ..., value) standardGeneric("peaks<-"))
setGeneric("spectra<-", function(object, ..., value) standardGeneric("spectra<-"))
setGeneric("precursorCharge<-", function(object, value) standardGeneric("precursorCharge<-"))
setGeneric("mz<-", function(object, value) standardGeneric("mz<-"))
setGeneric("processingData<-", function(object, value) standardGeneric("processingData<-"))
setGeneric("centroided<-", function(object, ..., value) standardGeneric("centroided<-"))
setGeneric("smoothed<-", function(object, ..., value) standardGeneric("smoothed<-"))
