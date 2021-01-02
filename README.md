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

[https://github.com/lgatto/ProtGenerics](https://github.com/lgatto/ProtGenerics)


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
##   [9] "as.list"                   "calculateFragments"       
##  [11] "centroided"                "centroided<-"             
##  [13] "chromatogram"              "chromatograms"            
##  [15] "collisionEnergy"           "collisionEnergy<-"        
##  [17] "combineFeatures"           "compounds"                
##  [19] "database"                  "dataOrigin"               
##  [21] "dataOrigin<-"              "dataStorage"              
##  [23] "dataStorage<-"             "detectorType"             
##  [25] "expemail"                  "exptitle"                 
##  [27] "filterAcquisitionNum"      "filterDataOrigin"         
##  [29] "filterDataStorage"         "filterEmptySpectra"       
##  [31] "filterIntensity"           "filterIsolationWindow"    
##  [33] "filterMsLevel"             "filterMz"                 
##  [35] "filterNA"                  "filterPolarity"           
##  [37] "filterPrecursorMz"         "filterPrecursorScan"      
##  [39] "filterProductMz"           "filterRt"                 
##  [41] "impute"                    "instrumentCustomisations" 
##  [43] "instrumentManufacturer"    "instrumentModel"          
##  [45] "intensity"                 "intensity<-"              
##  [47] "ionCount"                  "ions"                     
##  [49] "ionSource"                 "ionSourceDetails"         
##  [51] "isCentroided"              "isolationWindowLowerMz"   
##  [53] "isolationWindowLowerMz<-"  "isolationWindowTargetMz"  
##  [55] "isolationWindowTargetMz<-" "isolationWindowUpperMz"   
##  [57] "isolationWindowUpperMz<-"  "mass"                     
##  [59] "modifications"             "msInfo"                   
##  [61] "msLevel"                   "msLevel<-"                
##  [63] "mz"                        "mz<-"                     
##  [65] "peaks"                     "peaks<-"                  
##  [67] "peptides"                  "polarity"                 
##  [69] "polarity<-"                "precAcquisitionNum"       
##  [71] "precScanNum"               "precursorCharge"          
##  [73] "precursorCharge<-"         "precursorIntensity"       
##  [75] "precursorIntensity<-"      "precursorMz"              
##  [77] "precursorMz<-"             "processingData"           
##  [79] "processingData<-"          "productMz"                
##  [81] "productMz<-"               "proteins"                 
##  [83] "psms"                      "quantify"                 
##  [85] "rtime"                     "rtime<-"                  
##  [87] "scanIndex"                 "scans"                    
##  [89] "smooth"                    "smoothed"                 
##  [91] "smoothed<-"                "spectra"                  
##  [93] "spectra<-"                 "spectraData"              
##  [95] "spectraData<-"             "spectraNames"             
##  [97] "spectraNames<-"            "spectraVariables"         
##  [99] "tic"                       "tolerance"                
## [101] "writeMSData"

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
## <bytecode: 0x56438e5af9e0>
## <environment: namespace:mzR>
## 
## Signatures:
##         object   
## target  "mzRpwiz"
## defined "mzRpwiz"
```
