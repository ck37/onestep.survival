% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/1_surv_onestep.R
\name{onestep_single_t}
\alias{onestep_single_t}
\title{One-step TMLE estimator for survival at specific time point}
\usage{
onestep_single_t(dat, tk, dW = rep(1, nrow(dat)), SL.trt = c("SL.glm",
  "SL.step", "SL.earth"), SL.ctime = c("SL.glm", "SL.step", "SL.earth"),
  SL.ftime = c("SL.glm", "SL.step", "SL.earth"), maxIter = 300,
  epsilon_step = 0.001, tol = 1/nrow(dat), T.cutoff = NULL,
  verbose = FALSE)
}
\arguments{
\item{dat}{data.frame with columns T, A, C, W. All columns with character "W" will be treated as baseline covariates.}

\item{tk}{time point to compute survival probability}

\item{dW}{binary input vector specifying dynamic treatment (as a function output of W)}

\item{SL.trt}{SuperLearner library for fitting treatment regression}

\item{SL.ctime}{SuperLearner library for fitting censoring regression}

\item{SL.ftime}{SuperLearner library for fitting conditional hazard regression}

\item{maxIter}{maximal number of recursion for one-step}

\item{epsilon_step}{step size for one-step recursion}

\item{tol}{tolerance for optimization}

\item{T.cutoff}{manual right censor the data; remove parts dont want to esimate}

\item{verbose}{to print log-likelihood value during optimzation}
}
\description{
One-step TMLE estimator for survival at specific time point
}
\examples{
# TO DO
}
