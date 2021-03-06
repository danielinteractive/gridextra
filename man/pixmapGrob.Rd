\name{pixmapGrob}
\alias{pixmapGrob}
\title{create a grob from pixmap object}
\usage{
  pixmapGrob(pic, x = 0.5, y = 0.5, scale = 1,
    raster = FALSE, angle = 0, vp = NULL, ...)
}
\arguments{
  \item{pic}{pixmap object}

  \item{x}{x unit}

  \item{y}{y unit}

  \item{scale}{scale}

  \item{raster}{raster}

  \item{angle}{angle}

  \item{vp}{viewport}

  \item{...}{optional grob parameters, passed to imageGrob
  or rasterGrob}
}
\value{
  a gTree of class 'pixmap', with natural width and height
  in points
}
\description{
  create a grob from pixmap object
}
\details{
  Very primitive function, using RGraphics' imageGrob or
  rasterGrob (R>=2.11)
}
\examples{
library(pixmap)
library(RGraphics)
x <- read.pnm(system.file("pictures/logo.ppm", package="pixmap")[1])
g1 <- pixmapGrob(x)
dev.new(width=g1$width/72, height=g1$height/72)
grid.draw(g1)
}
\seealso{
  Other grob userlevel: \code{\link{arcTextGrob}},
  \code{\link{barbedGrob}}, \code{\link{borderGrob}},
  \code{\link{colorstripGrob}}, \code{\link{ebimageGrob}},
  \code{\link{ellipseGrob}}, \code{\link{interleaven}},
  \code{\link{ngonGrob}}, \code{\link{patternGrob}},
  \code{\link{rpatternGrob}}, \code{\link{stextGrob}},
  \code{\link{tableGrob}}, \code{\link{virtualGrob}}
}

