paquetes <- c(
  "tidyverse",
  "rio",
  "gtsummary",
  "gt",
  "broom",
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

instalados <- rownames(installed.packages())
faltantes <- setdiff(paquetes, instalados)

if (length(faltantes) > 0) {
  install.packages(faltantes)
}

invisible(lapply(paquetes, require, character.only = TRUE))

