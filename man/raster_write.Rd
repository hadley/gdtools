% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/raster.R
\name{raster_write}
\alias{raster_view}
\alias{raster_write}
\title{Draw/preview a raster to a png file}
\usage{
raster_write(x, path, width = 480, height = 480, interpolate = FALSE)

raster_view(path)
}
\arguments{
\item{x}{A raster object}

\item{path}{name of the file to create}

\item{width,height}{Width and height in pixels.}

\item{interpolate}{A logical value indicating whether to linearly
interpolate the image.}
}
\description{
\code{raster_view} is a helper function for testing. It uses \code{htmltools}
to render a png as an image with base64 encoded data image.
}
\examples{
r <- as.raster(matrix(hcl(0, 80, seq(50, 80, 10)),
 nrow = 4, ncol = 5))
plot(r)
t <- tempfile()
raster_write(r, t, width = 50, height = 50)
if (require("htmltools")) {
  raster_view(t)
}
}

