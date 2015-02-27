\name{ProtGenerics}

\alias{ProtGenerics-package}
\alias{ProtGenerics}
\alias{psms}
\alias{peaks}
\alias{modifications}
\alias{database}
\alias{rtime}
\alias{tic}
\alias{spectra}
\alias{intensity}
\alias{mz}
\alias{peptides}
\alias{proteins}
\alias{accessions}
\alias{scans}
\alias{mass}
\alias{ions}
\alias{chromatograms}


\title{
  S4 generic functions of Bioconductor proteomics infrastructure
}


\description{
  These generic functions provide basic interfaces to operations on and
  data access to proteomics and mass spectrometry infrastructure in the
  Bioconductor project. 
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
}


\arguments{
  \item{object}{Object of class for which methods are defined. } 
  \item{\dots}{Further arguments, perhaps used by methods. }
}


\details{
  For the details, please consult the manual pages of the respective
  methods.
}

\note{
  More generics can be added on request by opening an issue or sending a
  pull request on:
  
  \url{https://github.com/lgatto/ProtGenerics}
  
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
}


\keyword{methods}