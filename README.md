## SEM Power Simulation for a Latent Mediation Model

Simulation code for estimating statistical power in a structural equation model with three latent factors connected by a mediation pathway, adjusted for a set of demographic and lifestyle covariates.

### What this does

Simulates data under a population SEM (three latent factors, indicator loadings, a mediated structural path) across a range of sample sizes (N = 400–1000), fits the corresponding model in `lavaan`, and estimates power for each structural path including direct effects, the indirect (mediated) effect, and the total effect based on 1000 replications per sample size.

Covariates are included following a DAG-informed selection approach: sex, age, physical activity level, socioeconomic status, and energy intake, chosen to avoid adjustment for variables that act as mediators in the underlying causal structure rather than confounders.

### Contents

`scripts/SEM_power_covariates.R` — simulation code: model fitting, power calculation, and visualisation (power curves by sample size; model path diagram via `semPlot`)

`scripts/run_simulation_cache.R` — thin wrapper that sources the above and saves outputs to `outputs/`

`report/SEM_power_report.qmd` — Quarto report: loads pre-computed outputs and renders power curves, model/variable summary, and the SEM path diagram

`report/SEM_power_report.html` — pre-rendered HTML report (open directly, no R needed)

`outputs/` — cached simulation results (`.rds` files bridging the script and the report)

### Reproducing results

The R script and the Quarto report are complementary:

- **To view results immediately**: open `report/SEM_power_report.html` in any browser.
- **To re-render the report** from the cached outputs: `quarto render report/SEM_power_report.qmd`
- **To regenerate simulation outputs from scratch**: run `scripts/SEM_power_covariates.R` (takes several minutes; saves `.rds` files to `outputs/`), then re-render the report.

### Main packages

`lavaan`, `dplyr`, `tidyr`, `ggplot2`, `semPlot`

### Context

This code supports power and sample size planning for a preregistered structural equation modelling study (OSF, currently under embargo).

### Author

Aimone Ferri ([ORCID: 0009-0001-2156-6092](https://orcid.org/0009-0001-2156-6092))
