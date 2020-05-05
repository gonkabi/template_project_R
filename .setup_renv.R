## Update .Rprofile
lineNum <- system("wc -l .Rprofile | awk -F' ' '{print $1}'", intern = TRUE)
if (lineNum == "1") {
    system("cat ~/.Rprofile >> ./.Rprofile")
}

## Install nvimcom to use Nvim-R
if (file.exists("~/.config/nvim/R/nvimcom/") == TRUE) {
    if (file.exists(paste0(.libPaths()[1], "/nvimcom/")) == FALSE) {
        renv::install("~/.config/nvim/R/nvimcom/")
    }
}

