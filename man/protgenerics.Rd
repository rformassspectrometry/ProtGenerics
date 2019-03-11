\name{ProtGenerics}

\alias{ProtGenerics-package}
\alias{ProtGenerics}
\alias{psms}
\alias{peaks}
\alias{modifications}
\alias{database}
\alias{rtime}
\alias{rtime<-}
\alias{tic}
\alias{spectra}
\alias{intensity}
\alias{mz}
\alias{mz<-}
\alias{peptides}
\alias{proteins}
\alias{accessions}
\alias{scans}
\alias{mass}
\alias{ions}
\alias{chromatograms}
\alias{chromatogram}
\alias{isCentroided}
\alias{writeMSData}

\title{
  S4 generic functions for Bioconductor proteomics infrastructure
}


\description{
  These generic functions provide basic interfaces to operations on and
  data access to proteomics and mass spectrometry infrastructure in the
  Bioconductor project.

  For the details, please consult the respective methods' manual pages.

}

\details{

  \subsection{When should one define a generics?}{

    Generics are appropriate for functions that have \emph{generic}
    names, i.e. names that occur in multiple circumstances, (with
    different input classes, most often defined in different packages)
    or, when (multiple) dispatching is better handled by the generics
    mechanism rather than the developer. The dispatching mechanism will
    then automatically call the appropriate method and save the user
    from explicitly calling \code{package::method} or the developer to
    handle the multiple input types cases. When no such conflict exists
    or is unlikely to happen (for example when the name of the function
    is specific to a package or domain, or for class slots accessors and
    replacement methods), the usage of a generic is arguably
    questionable, and in most of these cases, simple, straightforward
    functions would be perfectly valid.

  }

  \subsection{When to define a generic in \code{ProtGenerics}?}{
  
    \code{ProtGenerics} is not meant to be the central package for
    generics, nor should it stop developers from defining the generics
    they need. It is a means to centralise generics that are defined in
    different packages (for example \code{mzR::psms} and
    \code{mzID::psms}, or \code{IRanges::score} and \code{mzR::score},
    now \code{BioGenerics::score}) or generics that live in a rather big
    package (say \code{mzR}) on which one wouldn't want to depend just
    for the sake of that generics' definition.


    The goal of \code{ProtGenerics} is to step in when namespace
    conflicts arise so as to to facilitate inter-operability of
    packages. In case such conflict appears due to multiple generics, we
    would (1) add these same definitions in \code{ProtGenerics}, (2)
    remove the definitions from the packages they stem from, which then
    (3) only need to import \code{ProtGenerics}. This would be very
    minor/straightforward changes for the developers and would resolve
    issues when they arise.

    More generics can be added on request by opening an issue or sending
    a pull request on:
  
    \url{https://github.com/lgatto/ProtGenerics}

  }
  
}

\usage{
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
writeMSData(object, file, ...)
}


\arguments{
  \item{object}{Object of class for which methods are defined. }
  \item{file}{for \code{writeMSData}}: the name of the file to which the
  data should be exported.
  \item{\dots}{Further arguments, possibly used by downstream methods. }
}


\seealso{
  \itemize{
    \item The \pkg{BiocGenerics} package for S4 generic functions needed
    by many Bioconductor packages.

    \item \code{\link[methods]{showMethods}} for displaying a summary of the
          methods defined for a given generic function.

    \item \code{\link[methods]{selectMethod}} for getting the definition of
          a specific method.

    \item \code{\link[methods]{setGeneric}} and
          \code{\link[methods]{setMethod}} for defining generics and methods.
  }
}



\author{
  Laurent Gatto <lg390@cam.ac.uk>
}


\examples{
## List all the symbols defined in this package:
ls('package:ProtGenerics')

\dontrun{
    ## What methods exists for 'peaks'
    showMethods("peaks")

    ## To look at one method in particular
    getMethod("peaks", "mzRpwiz")
}
}


\keyword{methods}