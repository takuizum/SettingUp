install.packages("xml2") # reccomend install from source if it could be done.
install.packages("devtools")
devtools::install_github("r-lib/xml2")
devtools::install_github("REditorSupport/languageserver")

# When the installing above, restart vs-code.
devtools::install_github("tidyverse/tidyverse")
fatal <- c("")