% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gadgetlikelihood.R
\name{gadget_update.gadgetlikelihood}
\alias{gadget_update.gadgetlikelihood}
\title{Update gadget likelihood components in a likelihood file}
\usage{
\method{gadget_update}{gadgetlikelihood}(gf, component, ...)
}
\arguments{
\item{gf}{The gadgetfile object to update}

\item{component}{Either a replacement \code{gadget_likelihood_component} (from MFDB or rgadget), or a component type name}

\item{...}{If a component type was provided above, the extra options to supply to \code{gadget_likelihood_component}}
}
\description{
Replace and/or append new likelihood comonents to an existing file
}
\examples{
\dontrun{
library(magrittr)  # import \%>\% function
path <- './model'
gadgetlikelihood('likelihood', path, missingOkay = TRUE) \%>\%
   # Add an understocking component
   gadget_update(gadget_understocking_component(name = 'understocking')) \%>\% 
   gadget_update('understocking', name = 'understocking') \%>\% # Identical to above
   write.gadget.file(path)
   }
}
