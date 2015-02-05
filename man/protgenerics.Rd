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
  More generics can be added on request by sending an email to the
  Bioc-devel mailing list:

    \url{http://bioconductor.org/help/mailing-list/}

  Things that should NOT be added to the \pkg{BiocGenerics} package:
  \itemize{
    \item Internal generic primitive functions like \code{\link{length}},
          \code{\link{dim}}, \code{`\link{dim<-}`}, etc...
          See \code{?\link{InternalMethods}} for the complete list.
          There are a few exceptions though, that is, the \pkg{BiocGenerics}
          package may actually redefine a few of those internal generic
          primitive functions as S4 generics when for example the signature
          of the internal generic primitive is not appropriate (this is the
          case for \code{BiocGenerics::\link[BiocGenerics]{cbind}}).

    \item S3 and S4 group generic functions like \code{\link{Math}},
          \code{\link{Ops}}, etc... See \code{?\link{groupGeneric}} and
          \code{?\link{S4groupGeneric}} for the complete list.

    \item Generics already defined in the \pkg{stats4} package.
  }
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


