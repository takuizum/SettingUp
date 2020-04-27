install.packages("xml2") # reccomend install from source if it could be done.
install.packages("devtools")
# devtools::install_github("rlib/xml2")
devtools::install_github("REditorSupport/languageserver")

# When the installing above, restart vs-code.


devtools::install_github("tidyverse/tidyverse")
fatal <- 
    c(
        "irtoys", "ltm", "Rcpp", "rstan", "psych", "magrittr", "mirt", "sirt", "pracma", "plink",
        "EstCRM", "equate", "GPArotation", "haven", "Hmisc", "latex2exp", "Deriv", 
        "openxlsx", "lavaan", "blavaan", "lme4"
    )

install.packages(fatal)


# jupyter notebook
install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'uuid', 'digest'))
# devtools::install_github('IRkernel/IRkernel')
install.packages("IRkernel", dependencies = TRUE)
IRkernel::installspec()

# Rmarkdown
install.packages("rmarkdown")
rmarkdown::pandoc_available() # これでTRUEって表示されればOK

# R stan
install.packages("rstan")
rstan::stan_version()
packageVersion("rstan") # latestは2.19.3
packageVersion("StanHeaders") # 2.11.0にする -> 2.18.1にしろとrstanから怒られる。 -> また怒られる。

# rtools 40
writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")
Sys.which("make")
install.packages("jsonlite", type = "source") # could not work on vscode.

# Makevars (.R folder)
# Add CXX = "C:\Rtools\mingw_64\bin\g++"

library(rstan)
schools_dat <- list(
    J = 8,
    y = c(28, 8, -3, 7, -1, 1, 18, 12),
    sigma = c(15, 10, 16, 11, 9, 11, 10, 18)
)
mod <- stan_model("src/8schools.stan")
fit <- stan(file = "src/8schools.stan", data = schools_dat)
# shinystan
library(shinystan)
launch_shinystan(fit)
