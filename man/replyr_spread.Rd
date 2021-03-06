% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gather_spread.R
\name{replyr_spread}
\alias{replyr_spread}
\title{Spread values found in rowControlColumn row groups as new columns. A concept demonstration, not a usable function.}
\usage{
replyr_spread(df, rowControlColumn, measurementNameColumn,
  measurementValueColumn, maxcols = 100, useTidyr = FALSE,
  eagerCompute = FALSE)
}
\arguments{
\item{df}{data item}

\item{rowControlColumn}{column to determine which sets of rows are considered a group.}

\item{measurementNameColumn}{column to take measurement names from (values become new columns)}

\item{measurementValueColumn}{column to take measurement values from}

\item{maxcols}{maximum number of values to expand to columns}

\item{useTidyr}{if TRUE use tidyr instead of calculating on own (only works on local data types)}

\item{eagerCompute}{if TRUE call compute on intermediate results}
}
\value{
data item
}
\description{
Spread values found in rowControlColumn row groups as new columns.
Values types (new column names) are identified in measurementNameColumn and values are taken
from measurementValueColumn.
This is denormalizing operation, or essentially a tidyr::spread, dplyr::dcast, or pivot.
This implementation moves
so much data it is essentially working locally and also very inefficient.
}
\examples{

d <- data.frame(
  index = c(1, 2, 3, 1, 2, 3),
  meastype = c('meas1','meas1','meas1','meas2','meas2','meas2'),
  meas = c('m1_1', 'm1_2', 'm1_3', 'm2_1', 'm2_2', 'm2_3'),
  stringsAsFactors = FALSE)
replyr_spread(d,'index','meastype','meas')
replyr_spread(d,'index','meastype','meas',useTidyr=TRUE)

}

