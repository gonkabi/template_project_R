# template_project_R
Template for R project.

# Table of Contents
<!--ts-->
   * [template_project_R](#template_project_r)
      * [Project Structure](#project-structure)
      * [R Package Version Control](#r-package-version-control)
      * [Test](#test)
      * [Test](#test-1)
      * [Test](#test-2)

<!-- Added by: shota, at: 2020年  5月  7日 木曜日 23:38:32 JST -->

<!--te-->

# Project Structure
Default composition shown following.
```
.
├── README.md
├── data
│   ├── processed
│   └── raw
├── output
├── report
└── src
    └── function
```

### data  
The data directory is where your data gose.  
This directory has two sub-directories, raw and processed.  
-- raw: store data as basically read-only  
-- processed: store data as disposable  

### output  
The output directory is where your output goes.  
Putting something numeric in front of an output name helps ordering.
ex) YYYY-MM-DD_FILENAME, 01_FILENAME

### report  
The report directory is where your report goes.

### src  
The src direcotry is where your script file goes. A report generate script should be also stored in it.  
This directory has one sub-directory, function.  
-- function: store function definition script  

# Manage PATH by here Package  
The here package helps to avoid using absolute path and using setwd(). It improves a portability of a project.  
The here() function from the here package build the path when you read or write a file. It creates paths relative to top-level directory.  Top-level directory can be simple as having an empty file named .here.  
Whenever you work on a project, launch the R process from the project's top-level directory.  

Example: The "data.csv" file will be saved into data directory
```
library(here)

outPath <- here("output", "data.csv")
write.table(iris, outPath, sep = ",")
```

# Manage Pacakge Version by renv Package  
The renv package is to bring project-local R dependency management to your projects.  
Using renv, it's possible to save and load the state of your project library.  

### The general workflow  
1. Call renv::init() to initialize a new project-local environment with a private R library.
2. Work in the project as normal, installing and removing new R packages as they are needed in the project. Using renv::install() is my recommendation. A package will be installed in the global package cache shared among projects. It reduces time to install the package once installed, because it just makes symbolic link to the global package cache.
3. Call renv::snapshot() to save the state of the project library to the lockfile (called renv.lock),
4. Continue working on your project, installing and updating R packages as needed.
5. Call renv::snapshot() again to save the state of your project library if your attempts to update R packages were successful, or call renv::restore() to revert to the previous state as encoded in the lockfile if your attempts to update packages introduced some new problems.

### .setup_renv.R  
This script support users to start using renv.  
* Update .Rprofile  
Once you execute renv::init(), the .Rprofile will be created on your working directory. This is differ from the .Rproflie you use usually. This script will reflect your .Rprofile on the newly created file.
* Install nvimcom to use Nvim-R  
If you are Nvim-R user, you need to install nvimcom on a project. This script will install nvimcom automatically.

Usage is just to execute it after create renv environment by renv::init().  
```
Rscript .setup_renv.R
```

### Tips  
* Before you install a package from github by renv::install(), need to execute ```library("devtools")```.  
* When you install a package from Bioconductor, try the following ```renv::install(bioc::PACKAGE_NAME)```. It will try to install the latest version.  
* If you would like to get older version about a Bioconductor package, try the following ```renv::install(bioc::PACKAGE_NAME@x.x.x)```  

# Make .gitignore

# How to Make TOC for README.md?
