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
[gonkabi@template_project_R]$ tree -L 2
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


# Control Pacakge Version by renv Package  
renv is a recommend way to control R package version.
