## -------------------------------------------------------------
## Data slots
## -------------------------------------------------------------

setGeneric("processingData", function(object, ...) standardGeneric("processingData"))
setGeneric("processingData<-", function(object, ..., value) standardGeneric("processingData<-"))
setGeneric("spectraVariables", function(object, ...) standardGeneric("spectraVariables"))
setGeneric("spectraNames", function(object, ...) standardGeneric("spectraNames"))
setGeneric("spectraNames<-", function(object, ..., value) standardGeneric("spectraNames<-"))
setGeneric("spectraData", function(object, ...) standardGeneric("spectraData"))
setGeneric("spectraData<-", function(object, ..., value) standardGeneric("spectraData<-"))
setGeneric("dataOrigin", function(object, ...) standardGeneric("dataOrigin"))
setGeneric("dataOrigin<-", function(object, value) standardGeneric("dataOrigin<-"))
setGeneric("dataStorage", function(object, ...) standardGeneric("dataStorage"))
setGeneric("dataStorage<-", function(object, value) standardGeneric("dataStorage<-"))

## -------------------------------------------------------------
## Metadata
## -------------------------------------------------------------

setGeneric("ionCount", function(object, ...) standardGeneric("ionCount"))
setGeneric("scanIndex", function(object, ...) standardGeneric("scanIndex"))
setGeneric("precursorMz", function(object, ...) standardGeneric("precursorMz"))
setGeneric("precursorMz<-", function(object, ..., value) standardGeneric("precursorMz<-"))
setGeneric("precursorIntensity", function(object, ...) standardGeneric("precursorIntensity"))
setGeneric("precursorIntensity<-", function(object, ..., value) standardGeneric("precursorIntensity<-"))
setGeneric("precursorCharge", function(object, ...) standardGeneric("precursorCharge"))
setGeneric("precursorCharge<-", function(object, ..., value) standardGeneric("precursorCharge<-"))
setGeneric("acquisitionNum", function(object, ...) standardGeneric("acquisitionNum"))
setGeneric("precAcquisitionNum", function(object, ...) standardGeneric("precAcquisitionNum"))
setGeneric("precScanNum", function(object, ...) standardGeneric("precScanNum"))
setGeneric("msLevel", function(object, ...) standardGeneric("msLevel"))
setGeneric("msLevel<-", function(object, ..., value) standardGeneric("msLevel<-"))
setGeneric("uniqueMsLevel", function(object, ...) standardGeneric("uniqueMsLevel"))

setGeneric("collisionEnergy", function(object, ...) standardGeneric("collisionEnergy"))
setGeneric("collisionEnergy<-", function(object, ..., value) standardGeneric("collisionEnergy<-"))
setGeneric("polarity", function(object, ...) standardGeneric("polarity"))
setGeneric("polarity<-", function(object, ..., value) standardGeneric("polarity<-"))
setGeneric("tic", function(object, ...) standardGeneric("tic"))
setGeneric("rtime", function(object, ...) standardGeneric("rtime"))
setGeneric("rtime<-", function(object, ..., value) standardGeneric("rtime<-"))
setGeneric("centroided", function(object, ...) standardGeneric("centroided"))
setGeneric("centroided<-", function(object, ..., value) standardGeneric("centroided<-"))
setGeneric("smoothed", function(object) standardGeneric("smoothed"))
setGeneric("smoothed<-", function(object, ..., value) standardGeneric("smoothed<-"))
setGeneric("isCentroided", function(object, ...) standardGeneric("isCentroided"))

setGeneric("isolationWindowTargetMz", function(object, ...) standardGeneric("isolationWindowTargetMz"))
setGeneric("isolationWindowTargetMz<-", function(object, ..., value) standardGeneric("isolationWindowTargetMz<-"))
setGeneric("isolationWindowLowerMz", function(object, ...) standardGeneric("isolationWindowLowerMz"))
setGeneric("isolationWindowLowerMz<-", function(object, ..., value) standardGeneric("isolationWindowLowerMz<-"))
setGeneric("isolationWindowUpperMz", function(object, ...) standardGeneric("isolationWindowUpperMz"))
setGeneric("isolationWindowUpperMz<-", function(object, ..., value) standardGeneric("isolationWindowUpperMz<-"))

setGeneric("productMz", function(object, ...) standardGeneric("productMz"))
setGeneric("productMz<-", function(object, ..., value) standardGeneric("productMz<-"))

setGeneric("compounds", function(object, ...) standardGeneric("compounds"))

## -------------------------------------------------------------
## Raw data
## -------------------------------------------------------------

setGeneric("peaks", function(object, ...) standardGeneric("peaks"))
setGeneric("peaks<-", function(object, ..., value) standardGeneric("peaks<-"))
setGeneric("intensity", function(object, ...) standardGeneric("intensity"))
setGeneric("intensity<-", function(object, ..., value) standardGeneric("intensity<-"))
setGeneric("mz", function(object, ...) standardGeneric("mz"))
setGeneric("mz<-", function(object, ..., value) standardGeneric("mz<-"))
setGeneric("spectra", function(object, ...) standardGeneric("spectra"))
setGeneric("spectra<-", function(object, ..., value) standardGeneric("spectra<-"))
setGeneric("scans", function(object, ...) standardGeneric("scans"))
setGeneric("chromatograms", function(object, ...) standardGeneric("chromatograms"))
setGeneric("chromatogram", function(object, ...) standardGeneric("chromatogram"))
setGeneric("mass", function(object, ...) standardGeneric("mass"))
setGeneric("ions", function(object, ...) standardGeneric("ions"))

## -------------------------------------------------------------
## Identification
## -------------------------------------------------------------

setGeneric("modifications", function(object, ...) standardGeneric("modifications"))
setGeneric("database", function(object, ...) standardGeneric("database"))
setGeneric("psms", function(object, ...) standardGeneric("psms"))
setGeneric("peptides", function(object, ...) standardGeneric("peptides"))
setGeneric("proteins", function(object, ...) standardGeneric("proteins"))
setGeneric("accessions", function(object, ...) standardGeneric("accessions"))
setGeneric("tolerance", function(object, ...) standardGeneric("tolerance"))
setGeneric("calculateFragments", function(sequence, object, ...) standardGeneric("calculateFragments"))

## -------------------------------------------------------------
## Instrument
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
setGeneric("combineFeatures", function(object, ...) standardGeneric("combineFeatures"))
setGeneric("aggregateFeatures", function(object, ...) standardGeneric("aggregateFeatures"))
setGeneric("impute", function(object, ...) standardGeneric("impute"))
setGeneric("alignRt", function(x, y, ...) standardGeneric("alignRt"))
setGeneric("quantify", function(object, ...) standardGeneric("quantify"))
setGeneric("bin", function(x, ...) standardGeneric("bin"))
setGeneric("compareSpectra", function(x, y, ...)
    standardGeneric("compareSpectra"))
setGeneric("compareChromatograms", function(x, y, ...)
    standardGeneric("compareChromatograms"))

## -------------------------------------------------------------
## IO
## -------------------------------------------------------------

setGeneric("writeMSData", function(object, file, ...) standardGeneric("writeMSData"))

## -------------------------------------------------------------
## Filtering
## -------------------------------------------------------------

setGeneric("filterAcquisitionNum", function(object, ...) standardGeneric("filterAcquisitionNum"))
setGeneric("filterDataOrigin", function(object, ...) standardGeneric("filterDataOrigin"))
setGeneric("filterDataStorage", function(object, ...) standardGeneric("filterDataStorage"))
setGeneric("filterEmptySpectra", function(object, ...) standardGeneric("filterEmptySpectra"))
setGeneric("filterIsolationWindow", function(object, ...) standardGeneric("filterIsolationWindow"))
setGeneric("filterMsLevel", function(object, ...) standardGeneric("filterMsLevel"))
setGeneric("filterPolarity", function(object, ...) standardGeneric("filterPolarity"))
setGeneric("filterPrecursorMz", function(object, ...) standardGeneric("filterPrecursorMz"))
setGeneric("filterPrecursorCharge", function(object, ...) standardGeneric("filterPrecursorCharge"))
setGeneric("filterProductMz", function(object, ...) standardGeneric("filterProductMz"))
setGeneric("filterPrecursorScan", function(object, ...) standardGeneric("filterPrecursorScan"))
setGeneric("filterRt", function(object, ...) standardGeneric("filterRt"))
setGeneric("filterMz", function(object, ...) standardGeneric("filterMz"))
setGeneric("filterNA", function(object, ...) standardGeneric("filterNA"))
setGeneric("filterIntensity", function(object, ...) standardGeneric("filterIntensity"))
