% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mapbox.R
\name{mapboxOptions}
\alias{mapboxOptions}
\alias{addMapboxGL}
\title{Adds a Mapbox GL layer to a Leaflet map}
\usage{
mapboxOptions(accessToken = NULL, ...)

addMapboxGL(map, style = "mapbox://styles/mapbox/streets-v9",
  accessToken = getOption("mapbox.accessToken"), layerId = NULL,
  group = NULL, setView = TRUE, options = mapboxOptions())
}
\arguments{
\item{accessToken}{A \href{https://docs.mapbox.com/help/how-mapbox-works/access-tokens/#creating-and-managing-access-tokens}{Mapbox access token},
or \code{NA} to explicitly pass no token. You can also set a token globally by
calling \code{options(mapbox.accessToken = "...")}.}

\item{...}{Other options to pass to Mapbox GL JS.}

\item{map}{The Leaflet R object (see \code{\link[leaflet:leaflet]{leaflet::leaflet()}}).}

\item{style}{Tile vector URL; can begin with \code{http://}, \code{https://}, or
\code{mapbox://}.}

\item{layerId}{A layer ID; see
\href{https://rstudio.github.io/leaflet/showhide.html}{docs}.}

\item{group}{The name of the group the newly created layer should belong to
(for \code{\link[leaflet:clearGroup]{leaflet::clearGroup()}} and \code{\link[leaflet:addLayersControl]{leaflet::addLayersControl()}} purposes).
(Warning: Due to the way Leaflet and Mapbox GL JS integrate, showing/hiding
a GL layer may give unexpected results.)}

\item{setView}{If \code{TRUE} (the default), drive the map to the center/zoom
specified in the style (if any). Note that this will override any
\code{\link[leaflet:setView]{leaflet::setView()}} or \code{\link[leaflet:fitBounds]{leaflet::fitBounds()}} calls that occur between
the \code{addMapboxGL} call and when the style finishes loading; use
\code{setView=FALSE} in those cases.}

\item{options}{A list of Map options. See the
\href{https://docs.mapbox.com/mapbox-gl-js/api/#map}{Mapbox GL JS documentation}
for more details. Not all options may work in the context of Leaflet.}
}
\description{
Uses the \href{https://github.com/mapbox/mapbox-gl-leaflet}{Mapbox GL Leaflet plugin}
to add a Mapbox GL layer to a Leaflet map.
}
\examples{
# Before running, set your Mapbox access token using:
# `options(mapbox.accessToken = "...")`

library(leaflet)
\donttest{
leaflet(quakes) \%>\%
  addMapboxGL(style = "mapbox://styles/mapbox/streets-v9") \%>\%
  addCircleMarkers(weight = 1, fillOpacity = 0, radius = 3)
}
}
