% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/Metadata.SampleType.Barcode.R
\name{Metadata.SampleType.Barcode}
\alias{Metadata.SampleType.Barcode}
\title{Return a sample type code to short letter code mapping.}
\usage{
Metadata.SampleType.Barcode(format = "csv", tcga_participant_barcode = "")
}
\arguments{
\item{format}{A string identifying the data type returned. Using json
requires the jsonlite package. \code{json}, \code{csv} or \code{tsv} are
available. In this package \code{tsv} and \code{csv} are identical.}

\item{tcga_participant_barcode}{A character vector containing TCGA Barcodes.
Empty string returns all patients. Either one gene OR barcode is required.}
}
\description{
Return a sample type code to short letter code mapping.
This method only returns the first barcode, so just use one.
}
\examples{
format = "csv"
tcga_participant_barcode = c("TCGA-GF-A4EO-06",
                             "TCGA-EL-A3D5-01A-22D-A202-08")
obj = Metadata.SampleType.Barcode(format = format,
                                  tcga_participant_barcode = tcga_participant_barcode)
}

