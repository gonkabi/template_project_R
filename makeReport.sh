#!/bin/sh

Rscript -e 'rmarkdown::render("./src/report.Rmd")'
mv -f ./src/report.html ./report/`date "+%F_"report.html`
