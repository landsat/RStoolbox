% Generated by roxygen2 (4.0.1): do not edit by hand
\name{stackMeta}
\alias{stackMeta}
\title{Import separate Landsat files into single stack}
\usage{
stackMeta(file, allResolutions = FALSE, resampleTIR = FALSE,
  resamplingMethod = "ngb", products = c("image", "index", "qa"))
}
\arguments{
\item{file}{character. Path to Landsat MTL metadata file.}

\item{allResolutions}{logical. if \code{TRUE} a list will be returned with length = unique spatial resolutions.}

\item{resampleTIR}{logical. As of  the USGS resamples TIR bands to 30m. Use this option if you use data processed prior to February 25, 2010 which has not been resampled.}

\item{resamplingMethod}{character. Method to use for TUR resampling ('ngb' or 'bilinear'). Defaults to 'ngb' (nearest neighbor).}

\item{products}{character vector. Which products should be returned in the stack? (only relevant for LS8 and LEDAPS processed products). 'image': image data, 'index': multiband indices, 'qa' quality flag bands.}
}
\value{
Either a list of rasterStacks comprising all resolutions or only one rasterStack comprising only 30m resolution imagery
}
\description{
Reads Landsat MTL or XML metadata files and loads single Landsat Tiffs into a rasterStack.
Be aware that by default stackLS() does NOT import panchromatic bands nor thermal bands with resolutions != 30m.
}
\note{
Be aware that by default stackLS() does NOT import panchromatic bands nor thermal bands with resolutions != 30m. Use the allResolutions argument to import all layers.

The USGS uses cubic convolution to resample TIR bands to 30m resolution. In the opinion of the author this may not be the best choice for supersampling.
Therefore the default method in this implementation is nearest neighbor. Keep this in mind if you plan to compare TIR bands created by differing resampling routines.
Typically, however, you will already have the USGS 30m TIR products, so no need to worry...
}

