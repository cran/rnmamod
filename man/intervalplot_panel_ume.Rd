% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/intervalplot.panel.UME_function.R
\name{intervalplot_panel_ume}
\alias{intervalplot_panel_ume}
\title{A panel of interval plots for the unrelated mean effects model}
\usage{
intervalplot_panel_ume(full, ume, drug_names)
}
\arguments{
\item{full}{An object of S3 class \code{\link{run_model}}. See 'Value' in
\code{\link{run_model}}.}

\item{ume}{An object of S3 class \code{\link{run_ume}}. See 'Value' in
\code{\link{run_ume}}.}

\item{drug_names}{A vector of labels with the name of the interventions in
the order they appear in the argument \code{data} of
\code{\link{run_model}}. If the argument \code{drug_names} is not defined,
the order of the interventions as they appear in \code{data} is used,
instead.}
}
\value{
A panel of interval plots on the posterior mean and 95\% credible
  interval of the summary effect size under the consistency model and the
  improved unrelated mean effects model (Spineli, 2021) of all pairwise
  comparisons observed in the network.
}
\description{
Creates a panel of interval plots on the summary effect sizes
  under the consistency model and the unrelated mean effects model.
  The number of interval plots equals the number of pairwise comparisons
  observed in the network.
}
\details{
\code{intervalplot_panel_ume} is integrated in the
  \code{\link{ume_plot}} function. The consistency model and the unrelated
  mean effects model are abbreviated in the y-axis as 'NMA model' and
  'UME model', respectively. The intervals are highlighted with green, when
  the corresponding summary effect sizes do not cross the vertical line of no
  difference, and red otherwise. Grey panels refer to the frail comparisons
  as detected by the \code{\link{improved_ume}} function (see 'Details' in
  \code{\link{improved_ume}}).

  For a binary outcome, when \code{measure} is "RR" (relative risk) or "RD"
  (risk difference) in \code{\link{run_model}}, \code{intervalplot_panel_ume}
  currently presents the results in the odds ratio scale.
}
\references{
Spineli LM. A revised framework to evaluate the consistency assumption
globally in a network of interventions. \emph{Med Decis Making} 2021.
doi: 10.1177/0272989X211068005
}
\seealso{
\code{\link{improved_ume}} \code{\link{run_model}},
  \code{\link{run_ume}}, \code{\link{ume_plot}}
}
\author{
{Loukia M. Spineli}
}
