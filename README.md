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
##   [3] "aggregateFeatures"         "alignRt"                  
##   [5] "analyser"                  "analyserDetails"          
##   [7] "analyzer"                  "analyzerDetails"          
##   [9] "as.list"                   "bin"                      
##  [11] "calculateFragments"        "centroided"               
##  [13] "centroided<-"              "chromatogram"             
##  [15] "chromatograms"             "collisionEnergy"          
##  [17] "collisionEnergy<-"         "combineFeatures"          
##  [19] "compareChromatograms"      "compareSpectra"           
##  [21] "compounds"                 "database"                 
##  [23] "dataOrigin"                "dataOrigin<-"             
##  [25] "dataStorage"               "dataStorage<-"            
##  [27] "detectorType"              "executeProcessingStep"    
##  [29] "expemail"                  "exptitle"                 
##  [31] "filterAcquisitionNum"      "filterDataOrigin"         
##  [33] "filterDataStorage"         "filterEmptySpectra"       
##  [35] "filterIntensity"           "filterIsolationWindow"    
##  [37] "filterMsLevel"             "filterMz"                 
##  [39] "filterNA"                  "filterPolarity"           
##  [41] "filterPrecursorCharge"     "filterPrecursorMz"        
##  [43] "filterPrecursorScan"       "filterProductMz"          
##  [45] "filterRt"                  "impute"                   
##  [47] "instrumentCustomisations"  "instrumentManufacturer"   
##  [49] "instrumentModel"           "intensity"                
##  [51] "intensity<-"               "ionCount"                 
##  [53] "ions"                      "ionSource"                
##  [55] "ionSourceDetails"          "isCentroided"             
##  [57] "isolationWindowLowerMz"    "isolationWindowLowerMz<-" 
##  [59] "isolationWindowTargetMz"   "isolationWindowTargetMz<-"
##  [61] "isolationWindowUpperMz"    "isolationWindowUpperMz<-" 
##  [63] "mass"                      "modifications"            
##  [65] "msInfo"                    "msLevel"                  
##  [67] "msLevel<-"                 "mz"                       
##  [69] "mz<-"                      "peaks"                    
##  [71] "peaks<-"                   "peptides"                 
##  [73] "polarity"                  "polarity<-"               
##  [75] "precAcquisitionNum"        "precScanNum"              
##  [77] "precursorCharge"           "precursorCharge<-"        
##  [79] "precursorIntensity"        "precursorIntensity<-"     
##  [81] "precursorMz"               "precursorMz<-"            
##  [83] "processingData"            "processingData<-"         
##  [85] "ProcessingStep"            "productMz"                
##  [87] "productMz<-"               "proteins"                 
##  [89] "psms"                      "quantify"                 
##  [91] "rtime"                     "rtime<-"                  
##  [93] "scanIndex"                 "scans"                    
##  [95] "smooth"                    "smoothed"                 
##  [97] "smoothed<-"                "spectra"                  
##  [99] "spectra<-"                 "spectraData"              
##  [ reached getOption("max.print") -- omitted 8 entries ]

library("mzR")
## Loading required package: Rcpp
## What methods exists for 'peaks'
showMethods("peaks")
## Function: peaks (package ProtGenerics)
## object="mzRnetCDF"
## object="mzRpwiz"
## object="mzRramp"

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
## <bytecode: 0x55e106e7aef0>
## <environment: namespace:mzR>
## 
## Signatures:
##         object   
## target  "mzRpwiz"
## defined "mzRpwiz"
```
