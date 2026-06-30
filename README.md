## SEM Power Simulation for a Latent Mediation Model

Simulation code for estimating statistical power in a structural equation model with three latent factors connected by a mediation pathway, adjusted for a set of demographic and lifestyle covariates.

### What this does

Simulates data under a population SEM (three latent factors, indicator loadings, a mediated structural path) across a range of sample sizes (N = 400–1000), fits the corresponding model in `lavaan`, and estimates power for each structural path including direct effects, the indirect (mediated) effect, and the total effect based on 1000 replications per sample size.

Covariates are included following a DAG-informed selection approach: sex, age, physical activity level, socioeconomic status, and energy intake, chosen to avoid adjustment for variables that act as mediators in the underlying causal structure rather than confounders.

### Contents

`scripts/SEM_power_covariates.R` is the simulation code: model fitting, power calculation, and visualisation (power curves by sample size; model path diagram via `semPlot`)

### Main packages

`lavaan`, `dplyr`, `tidyr`, `ggplot2`, `semPlot`

### Context

This code supports power and sample size planning for a preregistered structural equation modelling study (OSF, currently under embargo).

### Author

Aimone Ferri ([ORCID: 0009-0001-2156-6092](https://orcid.org/0009-0001-2156-6092))
