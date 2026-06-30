#===========================================#
# Runs the existing simulation script once and
# caches the objects needed for the Quarto report
# (power_long, power_df, fit) under outputs/.
#===========================================#

library(lavaan)
library(dplyr)
library(tidyr)
library(ggplot2)
library(semPlot)

dir.create("outputs", showWarnings = FALSE)

# redirect any incidental plotting from the sourced script to a throwaway device
png(filename = tempfile(fileext = ".png"))
source("scripts/SEM_power_covariates.R", echo = FALSE)
dev.off()

saveRDS(power_long, file = "outputs/power_long.rds")
saveRDS(power_df,   file = "outputs/power_df.rds")
saveRDS(fit,        file = "outputs/fit_example.rds")

cat("Cached power_long, power_df, fit_example to outputs/\n")
