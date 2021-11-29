params <-
list(EVAL = FALSE)

## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include = FALSE---------------------------------------------------
library(rnmamod)

## ---- echo = FALSE, results = "hide", fig.width = 5, fig.height = 5, fig.align = "center"----
netplot(data = nma.baker2009, drug_names = c("placebo", "budesonide", "budesonide plus \n formoterol", "fluticasone", "fluticasone plus \n salmeterol", "formoterol", "salmeterol", "tiotropium"),
        adjust.figsizex = 1.35, adjust.figsizey = 1.15)

## ----eval = FALSE-------------------------------------------------------------
#  run_model(data = nma.baker2009,
#            measure = "OR",
#            heter_prior = list("halfnormal", 0, 1),
#            D = 0,
#            n_chains = 3,
#            n_iter = 10000,
#            n_burnin = 1000,
#            n_thin = 1)

## ----eval = FALSE-------------------------------------------------------------
#  run_model(data = nma.baker2009,
#            measure = "OR",
#            model = "RE",
#            assumption = "HIE-ARM",
#            heter_prior = list("lognormal", -2.06, 0.438),
#            mean_misspar = c(0, 0),
#            var_misspar = 1,
#            D = 0,
#            n_chains = 3,
#            n_iter = 10000,
#            n_burnin = 1000,
#            n_thin = 1)

## ----echo = FALSE, comment = NA-----------------------------------------------
head(nma.baker2009[, c(-10, -11, -12, -13)])

