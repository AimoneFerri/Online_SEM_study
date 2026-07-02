## SEM Power Simulation for a Latent Mediation Model

Monte Carlo power analysis for a structural equation model (DietHealthy → Mental → Cog), adjusted for demographic and lifestyle covariates, across N = 400–1000 with 1000 replications per sample size.

### Contents

| File | Description |
|---|---|
| `scripts/SEM_power_covariates.R` | Simulation, power estimation, and plots; saves results to `outputs/` |
| `report/SEM_power_report.qmd` | Quarto report (loads cached outputs) |
| `report/SEM_power_report.html` | Pre-rendered report |

To regenerate from scratch: run the R script, then `quarto render report/SEM_power_report.qmd`.

### Packages

`lavaan`, `dplyr`, `tidyr`, `ggplot2`, `semPlot`

### Context

Power and sample size planning for a preregistered SEM study (OSF, currently under embargo).

### Author

Aimone Ferri ([ORCID: 0009-0001-2156-6092](https://orcid.org/0009-0001-2156-6092))
