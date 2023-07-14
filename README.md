### Importing Specific Functions from a customized R script to another when being called/sourced

### Table of Content
- [Introduction](https://github.com/fendit/import-specific-customized-functions#introduction)
- [Example](https://github.com/fendit/import-specific-customized-functions#example)
- [Remarks](https://github.com/fendit/import-specific-customized-functions#remarks)
- [References](https://github.com/fendit/import-specific-customized-functions#references)

### Introduction
In this repository, I present a simple method to import specific functions (as well as libraries and variables/data) from a cusomtized R script to another one when being called/sourced.

### Example
Suppose there are three scripts:
- Analysis (```script_1.R``` and ```script_2.R```): Perform different analyses
- Function (```functions.R```): Contains two (or more) if-statements that store libraries, variables, data and customized functions to be used for each analysis R script

Suppose we would like to call functions from ```functions.R``` when we work with ```analysis.R```. Hence, in ```analysis_1.R```, we execute the following command:

```
source(file = "functions.R")
```

Meanwhile, ```functions.R``` examines whether if-statements are satisfied. Specifically, it examines whether the name of R script (```analysis_1.R``` in this case) is being called from matches with the condition, which is as follows:

```
basename(rstudioapi::documentPath())=='script_1.R'
```
If the condition is satisfied, then all functions (as well as libraries, variables and data) are loaded to the global environment. The same is applicable for another analysis script (```script_2.R``` in our case).

### Remarks
1. Specific functions must be called within the analysis script. It would not work if the same command is executed on console (as conditions in if-statements trace the basename of script being called from, and it would be NULL for console (which is not a script)).
2. If the following message is shown in the Console after running, restart R session and try again:
```
Error in exists(cacheKey, where = .rs.WorkingDataEnv, inherits = FALSE) : 
  invalid first argument
```
3. ```documentPath()``` and ```getSourceEditorContext()$path``` in ```rstudioapi``` print the path of the script existing the command (based on my testing, the former did not generate a result 'NULL' when running it within a script).
4. ```basename()``` results in the name of R script being called from.

### References
This repository is inspired by [this post](https://stackoverflow.com/questions/74808768/how-to-find-the-name-of-script-that-is-currently-running-in-r) on stackoverflow.
