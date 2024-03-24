params <-
list(EVAL = FALSE)

## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include = FALSE---------------------------------------------------
library(rnmamod)

## ----set-options, echo = FALSE, comment = NA----------------------------------
orig <- options(width = 1000)
nma.bottomley2011
options(orig)

## ----results = "hide", fig.show = "hide"--------------------------------------
netplot(data = nma.bottomley2011, drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"), show_multi = TRUE, edge_label_cex = 1)

## ----echo = FALSE, results = "hide", fig.width = 5, fig.height = 5, fig.align = "center"----
netplot(data = nma.bottomley2011, drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"), show_multi = TRUE, edge_label_cex = 1)

## ----echo = FALSE, fig.show = "hide"------------------------------------------
describe_network(data = nma.bottomley2011,
                 drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"),
                 measure = "OR",
                 save_xls = FALSE)$network_description

## ----echo = FALSE, fig.show = "hide"------------------------------------------
describe_network(data = nma.bottomley2011,
                 drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"),
                 measure = "OR",
                 save_xls = FALSE)$table_interventions

## ----echo = FALSE, fig.show = "hide"------------------------------------------
describe_network(data = nma.bottomley2011,
                 drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"),
                 measure = "OR",
                 save_xls = FALSE)$table_comparisons

## ----results = "hide", fig.show = "hide"--------------------------------------
heatmap_missing_network(data = nma.bottomley2011, drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"))

## ----echo = FALSE, results = "hide", fig.width = 7, fig.height = 7, fig.align = "center"----
heatmap_missing_network(data = nma.bottomley2011, drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"))

## ----results = "hide", fig.show = "hide"--------------------------------------
heatmap_missing_dataset(data = nma.bottomley2011, trial_names = nma.bottomley2011$study, drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"))

## ----echo = FALSE, results = "hide", fig.width = 7.5, fig.height = 7, fig.align = "center"----
heatmap_missing_dataset(data = nma.bottomley2011, trial_names = nma.bottomley2011$study, drug_names = c("BDP", "BMV", "CPL", "CPL+polytar", "capasal", "TCF gel", "placebo"))

