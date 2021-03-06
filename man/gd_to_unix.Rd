% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/callGadget.R
\name{gd_to_unix}
\alias{gd_to_unix}
\title{gadget.variant.dir to unix line endings}
\usage{
gd_to_unix(gd)
}
\arguments{
\item{gd}{gadget.variant.dir}
}
\value{
nothing
}
\description{
This function converts all files in the gadget variant directory from windows line endings to unix
}
\examples{
\dontrun{
gd <- gadget.variant.dir('test')
test <- 
   gadgetfile('test',components = list(test = list(a=1)))
write.gadget.file(test, gd)

gd_to_unix(gd)
}
}
