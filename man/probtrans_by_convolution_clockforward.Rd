% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/probtrans_ebmstate.R
\name{probtrans_by_convolution_clockforward}
\alias{probtrans_by_convolution_clockforward}
\title{Compute transition probabilities under a clock-forward model using
a convolution algorithm.}
\usage{
probtrans_by_convolution_clockforward(
  tmat,
  cumhaz,
  from_state,
  to_state,
  spline_list,
  unique_paths_object,
  time
)
}
\arguments{
\item{tmat}{Transition matrix.}

\item{cumhaz}{\code{msfit} object.}

\item{from_state}{Initial state.}

\item{to_state}{Target state.}

\item{spline_list}{A list whose elements are spline functions 
approximating the cumulative hazard of making each possible transition in
the process. This is normally a list
object created by running \code{cumhaz_splines}.}

\item{unique_paths_object}{An object created by running \code{unique_paths}.}

\item{time}{A vector of ordered time points.}
}
\description{
Compute transition probabilities for a given starting state and target state
under a clock-forward model, using a convolution algorithm.

\code{probtrans_by_convolution_clockforward} is an internal function of
\code{probtrans_by_convolution} and is not meant to be called directly by the user.
}
\seealso{
\code{\link{probtrans_ebmstate}};
\code{\link{probtrans_by_convolution_clockreset}}; 
\code{\link{probtrans_by_convolution}};
\code{\link{unique_paths}};
\code{\link{cumhaz_splines}}.
}
\author{
Rui Costa & Moritz Gerstung
}
