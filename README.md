<!-- README.md is generated from README.Rmd. Please edit that file -->



# Generic infrastructure for Bioconductor mass spectrometry packages

## Description:

These generic functions and classes provide basic interfaces to
operations on and data access to mass spectrometry infrastructure in
the Bioconductor project.

For the details, please consult the respective methods' manual pages.

## Usage:

```r
psms(object, ...)
peaks(object, ...)
modifications(object, ...)
database(object, ...)
rtime(object, ...)
tic(object, ...)
spectra(object, ...)
intensity(object, ...)
mz(object, ...)
peptides(object, ...)
proteins(object, ...)
accessions(object, ...)
scans(object, ...)
mass(object, ...)
ions(object, ...)
chromatograms(object, ...)
chromatogram(object, ...)
isCentroided(object, ...)
## and many more - see below
```

## Arguments:

- `object`: Object of class for which methods are defined.
- `...`: Further arguments, possibly used by downstream methods.

## Details:

### When should one define a generics?:

Generics are appropriate for functions that have _generic_
names, i.e. names that occur in multiple circumstances, (with
different input classes, most often defined in different
packages) or, when (multiple) dispatching is better handled by
the generics mechanism rather than the developer. The
dispatching mechanism will then automatically call the
appropriate method and save the user from explicitly calling
`package::method` or the developer to handle the multiple input
types cases. When no such conflict exists or is unlikely to
happen (for example when the name of the function is specific to
a package or domain, or for class slots accessors and
replacement methods), the usage of a generic is arguably
questionable, and in most of these cases, simple,
straightforward functions would be perfectly valid.

### When to define a generic in `ProtGenerics`?:

`ProtGenerics` is not meant to be the central package for generics,
nor should it stop developers from defining the generics they need. It
is a means to centralise generics that are defined in different
packages (for example `mzR::psms` and `mzID::psms`, or
`IRanges::score` and `mzR::score`, now `BioGenerics::score`) or
generics that live in a rather big package (say `mzR`) on which one
wouldn't want to depend just for the sake of that generics'
definition.

The goal of `ProtGenerics` is to step in when namespace conflicts
arise so as to to facilitate inter-operability of packages. In case
such conflict appears due to multiple generics, we would (1) add these
same definitions in `ProtGenerics`, (2) remove the definitions from
the packages they stem from, which then (3) only need to import
`ProtGenerics`. This would be very minor/straightforward changes for
the developers and would resolve issues when they arise.

More generics can be added on request by opening an issue or sending a
pull request on:

[https://github.com/RforMassSpectrometry/ProtGenerics](https://github.com/RforMassSpectrometry/ProtGenerics)


## See Also:

- The `BiocGenerics` package for S4 generic functions needed by many
  Bioconductor packages.
- `showMethods` for displaying a summary of the methods defined for a
  given generic function.
- `selectMethod` for getting the definition of a specific method.
- `setGeneric` and `setMethod` for defining generics and methods.

## Examples:


```r
library("ProtGenerics")
## 
## Attaching package: 'ProtGenerics'
## The following object is masked from 'package:stats':
## 
##     smooth
## List all the symbols defined in this package:
ls('package:ProtGenerics')
##   [1] "accessions"                "acquisitionNum"           
##   [3] "addProcessing"             "adjacencyMatrix"          
##   [5] "aggregateFeatures"         "alignRt"                  
##   [7] "analyser"                  "analyserDetails"          
##   [9] "analyzer"                  "analyzerDetails"          
##  [11] "as.list"                   "bin"                      
##  [13] "calculateFragments"        "centroided"               
##  [15] "centroided<-"              "chromatogram"             
##  [17] "chromatograms"             "collisionEnergy"          
##  [19] "collisionEnergy<-"         "combineFeatures"          
##  [21] "compareChromatograms"      "compareSpectra"           
##  [23] "compounds"                 "database"                 
##  [25] "dataOrigin"                "dataOrigin<-"             
##  [27] "dataStorage"               "dataStorage<-"            
##  [29] "detectorType"              "executeProcessingStep"    
##  [31] "expemail"                  "exptitle"                 
##  [33] "filterAcquisitionNum"      "filterDataOrigin"         
##  [35] "filterDataStorage"         "filterEmptySpectra"       
##  [37] "filterIntensity"           "filterIsolationWindow"    
##  [39] "filterMsLevel"             "filterMz"                 
##  [41] "filterNA"                  "filterPolarity"           
##  [43] "filterPrecursorCharge"     "filterPrecursorMz"        
##  [45] "filterPrecursorScan"       "filterProductMz"          
##  [47] "filterRt"                  "impute"                   
##  [49] "instrumentCustomisations"  "instrumentManufacturer"   
##  [51] "instrumentModel"           "intensity"                
##  [53] "intensity<-"               "ionCount"                 
##  [55] "ions"                      "ionSource"                
##  [57] "ionSourceDetails"          "isCentroided"             
##  [59] "isolationWindowLowerMz"    "isolationWindowLowerMz<-" 
##  [61] "isolationWindowTargetMz"   "isolationWindowTargetMz<-"
##  [63] "isolationWindowUpperMz"    "isolationWindowUpperMz<-" 
##  [65] "mass"                      "modifications"            
##  [67] "msInfo"                    "msLevel"                  
##  [69] "msLevel<-"                 "mz"                       
##  [71] "mz<-"                      "peaks"                    
##  [73] "peaks<-"                   "peptides"                 
##  [75] "polarity"                  "polarity<-"               
##  [77] "precAcquisitionNum"        "precScanNum"              
##  [79] "precursorCharge"           "precursorCharge<-"        
##  [81] "precursorIntensity"        "precursorIntensity<-"     
##  [83] "precursorMz"               "precursorMz<-"            
##  [85] "processingData"            "processingData<-"         
##  [87] "ProcessingStep"            "productMz"                
##  [89] "productMz<-"               "proteins"                 
##  [91] "psms"                      "quantify"                 
##  [93] "rtime"                     "rtime<-"                  
##  [95] "scanIndex"                 "scans"                    
##  [97] "smooth"                    "smoothed"                 
##  [99] "smoothed<-"                "spectra"                  
##  [ reached getOption("max.print") -- omitted 11 entries ]

library("mzR")
## Loading required package: Rcpp
## What methods exists for 'peaks'
showMethods("peaks")
## Function: peaks (package ProtGenerics)
## object="mzRnetCDF"
## object="mzRpwiz"

## To look at one method in particular
getMethod("peaks", "mzRpwiz")
## Method Definition:
## 
## function (object, ...) 
## {
##     .local <- function (object, scans) 
##     .peaks(object, scans)
##     .local(object, ...)
## }
## <bytecode: 0x55fe309bfe60>
## <environment: namespace:mzR>
## 
## Signatures:
##         object   
## target  "mzRpwiz"
## defined "mzRpwiz"
```
