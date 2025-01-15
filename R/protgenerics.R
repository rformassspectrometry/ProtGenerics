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
setGeneric("uniqueMsLevels", function(object, ...) standardGeneric("uniqueMsLevels"))

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
setGeneric("adjacencyMatrix", function(object, ...) standardGeneric("adjacencyMatrix"))

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
setGeneric("spectrapply", function(object, ...) standardGeneric("spectrapply"))
setGeneric("estimatePrecursorIntensity", function(object, ...)
    standardGeneric("estimatePrecursorIntensity"))

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
setGeneric("filterPrecursorMzRange", function(object, ...) standardGeneric("filterPrecursorMzRange"))
setGeneric("filterPrecursorMzValues", function(object, ...) standardGeneric("filterPrecursorMzValues"))
setGeneric("filterPrecursorCharge", function(object, ...) standardGeneric("filterPrecursorCharge"))
setGeneric("filterProductMz", function(object, ...) standardGeneric("filterProductMz"))
setGeneric("filterProductMzRange", function(object, ...) standardGeneric("filterProductMzRange"))
setGeneric("filterProductMzValues", function(object, ...) standardGeneric("filterProductMzValues"))
setGeneric("filterPrecursorScan", function(object, ...) standardGeneric("filterPrecursorScan"))
setGeneric("filterRt", function(object, ...) standardGeneric("filterRt"))
setGeneric("filterMz", function(object, ...) standardGeneric("filterMz"))
setGeneric("filterMzRange", function(object, ...) standardGeneric("filterMzRange"))
setGeneric("filterMzValues", function(object, ...) standardGeneric("filterMzValues"))
setGeneric("filterNA", function(object, ...) standardGeneric("filterNA"))
setGeneric("filterIntensity", function(object, ...) standardGeneric("filterIntensity"))
setGeneric("filterRanges", function(object, ...) standardGeneric("filterRanges"))
setGeneric("filterValues", function(object, ...) standardGeneric("filterValues"))

#' @title Filter features
#'
#' @description
#'
#' Implementations of this generic filter function are supposed to filter
#' *features* in `object` based on a filter criteria defined by
#' parameter `filter`.
#'
#' @param object The object to filter.
#'
#' @param filter The filtering criteria on which `object` should be filtered.
#'
#' @param ... Optional parameters.
#' 
#' @md
setGeneric("filterFeatures",
           function(object, filter, ...) standardGeneric("filterFeatures"))

#' @title Filter Spectra
#'
#' @description
#'
#' Implementations of this generic filter function are supposed to filter
#' *spectra* (e.g. within a `Spectra` object) based on filter criteria
#' defined with parameter `filter`.
#'
#' @param object The object to filter.
#'
#' @param filter The filtering criteria based on which `object` should be
#'     filtered.
#'
#' @param ... Optional parameters.
#'
#' @md
setGeneric("filterSpectra", def = function(object, filter, ...)
    standardGeneric("filterSpectra"))

#' @title General backend methods
#'
#' @description
#'
#' These methods are used for implementations of *backends* e.g. for `Spectra`
#' or `Chromatograms` object to initialize the backend, merge backends or
#' extract specific information from them.
#' See the respective help pages (e.g. in the `Spectra` or `Chromatograms`
#' packages) for information on the actual implementations of these methods.
#'
#' @param backend A *backend* object.
#' 
#' @param object The *backend* object.
#'
#' @param ... Optional parameters.
#'
#' @md
#'
#' @name backendInitialize
setGeneric("backendInitialize", function(object, ...)
    standardGeneric("backendInitialize"))

#' @rdname backendInitialize
setGeneric("isReadOnly", function(object) standardGeneric("isReadOnly"))

#' @rdname backendInitialize
setGeneric("setBackend", function(object, backend, ...)
    standardGeneric("setBackend"))

#' @rdname backendInitialize
setGeneric("backendMerge", function(object, ...)
           standardGeneric("backendMerge"))

#' @rdname backendInitialize
setGeneric("backendBpparam", def = function(object, ...)
    standardGeneric("backendBpparam"))

#' @rdname backendInitialize
setGeneric("backendParallelFactor", def = function(object, ...)
    standardGeneric("backendParallelFactor"))

#' @rdname backendInitialize
setGeneric("supportsSetBackend", function(object, ...)
    standardGeneric("supportsSetBackend"))

#' @title Get or set MS peak data
#'
#' @description
#'
#' These methods get or set mass spectrometry (MS) peaks data, which can be
#' m/z, intensity or retention time values.
#' See the respective help pages (e.g. in the `Spectra` or `Chromatograms`
#' packages) for information on the actual implementations of these methods.
#'
#' @param object A data object.
#'
#' @param value Replacement for peaks data.
#'
#' @param ... Optional parameters.
#'
#' @md
#'
#' @name peaksData
setGeneric("peaksData", function(object, ...) standardGeneric("peaksData"))

#' @rdname peaksData
setGeneric("peaksData<-", function(object, value)
    standardGeneric("peaksData<-"))

#' @rdname peaksData
setGeneric("peaksVariables", function(object, ...)
    standardGeneric("peaksVariables"))

#' @title Extracting elements by index
#'
#' @description
#'
#' The `extractByIndex()` method allows to subset an object (or extract
#' elements from it) by providing their `integer` indices.
#'
#' @param object The object to subset/from which to extract elements.
#'
#' @param i `integer` with the indices.
#'
#' @md
#'
#' @export
setGeneric("extractByIndex", function(object, i)
    standardGeneric("extractByIndex"))

#' @title Processing Queue
#'
#' @name processingQueue
#'
#' @description
#' 
#' These methods are related to the *processing queue* implemented in the
#' [Spectra](https://github.com/RforMassSpectrometry/Spectra) and
#' [Chromatograms](https://github.com/RforMassSpectrometry/Chromatograms)
#' packages.
#'
#' - `addProcessing()` adds a processing step to the processing queue.
#'
#' - `applyProcessing()` execute the processing queue replacing the original
#'   data in `object` with the processed one.
#' 
#' - `processingChunkSize()` and `processingChunkSize()<-` are supposed to get
#'   and set the number of elements (e.g. spectra) for which the data is loaded
#'   into memory and processed at a time.
#'
#' - `processingChunkFactor()`: defines a `factor` that can be used to split
#'   `object` into chunks defined by the length of `object` and its
#'   `processingChunkSize()`.
#' 
#' @param object The object with the processing queue.
#'
#' @param value The replacement value.
#'
#' @param ... Additional parameters to be defined.
#'
NULL

#' @rdname processingQueue
setGeneric("processingChunkSize", function(object, ...)
    standardGeneric("processingChunkSize"))

#' @rdname processingQueue
setGeneric("processingChunkSize<-", function(object, ..., value)
    standardGeneric("processingChunkSize<-"))

#' @rdname processingQueue
setGeneric("addProcessing", function(object, ...)
    standardGeneric("addProcessing"))

#' @rdname processingQueue
setGeneric("applyProcessing", function(object, ...)
    standardGeneric("applyProcessing"))

#' @rdname processingQueue
setGeneric("processingChunkFactor", function(object, ...)
    standardGeneric("processingChunkFactor"))
