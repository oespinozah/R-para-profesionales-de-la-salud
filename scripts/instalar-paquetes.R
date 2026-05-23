paquetes <- c(
  "tidyverse",
  "rio",
  "gtsummary",
  "gt",
  "broom",
  "broom.helpers",
  "car",
  "epiR",
  "pwr",
  "survival",
  "survminer",
  "MASS",
  "sandwich",
  "lmtest",
  "rpart",
  "rpart.plot",
  "e1071",
  "mgcv",
  "pROC",
  "mice"
)

if (.Platform$OS.type == "windows" && nzchar(Sys.getenv("R_LIBS_USER"))) {
  dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE, showWarnings = FALSE)
  .libPaths(c(Sys.getenv("R_LIBS_USER"), .libPaths()))
}

instalados <- rownames(installed.packages())
faltantes <- setdiff(paquetes, instalados)

if (length(faltantes) > 0) {
  install.packages(faltantes, lib = .libPaths()[1])
}

invisible(lapply(paquetes, require, character.only = TRUE))
