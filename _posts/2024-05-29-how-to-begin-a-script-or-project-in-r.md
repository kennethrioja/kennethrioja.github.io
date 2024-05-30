---
layout: post
title: How to begin a script or project in R?
date: 2024-05-29 13:00:00
description: Write a snippet with the initial script skeleton!
tags: work data code # work university hobby research edtech code ux ui data psychology videogames misc book
toc:
  beginning: true
  sidebar: left
# categories: sample-posts
related_posts: false
# related_publications: einstein1950meaning, einstein1905movement
# thumbnail: assets/img/blog_screenandearlychildhood.jpeg # 300x400
# featured: true
# redirect: https://edu.ge.ch/site/tablettepedagogique/2024/03/28/2656/
---

If you have never heard about snippets, it is like an autocompletion that **you** have written in advance. At the end of this blog post, you will be able to write a project skeleton to begin your R project as well as being able to write a snippet. The project skeleton includes packages installation, csv/xlsx import, .csv / .pdf / .RData export.

For the advanced people willing to have a hands-on solution, you can directly jump to the [end of this article](#snippets) to copy-paste the header snippet.

## Building your project skeleton

### Description

When I read any kind of script, I like to read about what this script is all about, who wrote it, why and when. In order to do this, you can begin any project with this kind of header (Do not forget to open a new project (Cmd + Shift + N)) :

```
## /\ ----
## __________________________
## Title:
## Author: NAME SURNAME, INSTITUTION
## Email: johndoe@example.com
## Date Created: 2024-05-29
## __________________________
## Code Outline:
## 1. ...
## 2. ...
## __________________________
## Notes:
##  
## __________________________
```

Here you can write more about the specs of your code, maybe the Code Outline is a bit overkill here, it depends on what you want to convey.

### Initial setup

I love having a structured code and easy to navigate. Like this blog post and its different titles and sub-titles (for example, <h1>, <h2> for HTML), you can do this in R too! Here is the first header I always have in my projects:

```
## Top ----
```

Ok, thanks but how does it makes the code easier to navigate? Click on the icon with lines on the top right of the file panel, next to "Source". Taa-daa! You can now see and click on "Top" to make your cursor in the selected header. Neat!

Let's get into the initial setup now, try to understand the following code :

```
## Clear workspace
rm(list=ls())

## Seed for random number generation
set.seed(42)

## Load packages
# install.packages("pacman")
library(pacman)
pacman::p_load(
# insert packages' name here
  "rstudioapi"
)

## Set working directory to current folder
setwd(dirname(rstudioapi::getSourceEditorContext()$path))
# getwd()
```

`rm(list=ls())` is used to clear the current environment

`set.seed(42)` was a mystic function when I began coding in R. It affects random generation of numbers, plots in the way that when you run this function before any random generation, it will always create the same value for a random number or the same organisation for a plot. In short, it is necessary when you want to be reproducible when using random generation.

`p_load()` coming from the package `pacman` (as we can see by the namespace used before the function, `thisisanamespace::thisisafunction()`) allows to `install.packages()` and `library()` at the same time. You can continue adding packages by writing them in brackets and separated by a coma.

`setwd(dirname(rstudioapi::getSourceEditorContext()$path))` allows to set the working directory to the path of the current project. If you have followed this tutorial and you run this, you can see that it displays an error, this is because you have not saved your project somewhere. Save your project, rerun the line, it works, *bravo*.<br>
If you want to check what your current working directory is, run `getwd()`.

### Load environment or csv

As easy as it is, here is the code :

```
## Load environment or read .csv files
load(".RData")
df <- read.csv(".csv")
```

### More headers!

Here is how you write more headers :

```
## 1. ... ----

### 1.1 ... ----

#### 1.1.1 ... ----

## 2. ... ----
```

You can see your right panel being updated with these new headers!

### Save

At the end of each project you must export something, either a cleaned version of the raw data you have in a .csv format, either a plot that you want to show to your collaborators in .pdf, or a whole .RData environment to begin your analyses in a fresh start. Here is my workflow for each of these steps. Modify it so that is suits your needs !

```
## Save ----
output_dir = "./output"
proj_name = "projname"
name_raw = paste(output_dir, '/', proj_name, '_', gsub('-','',Sys.Date()), sep='')

dir.create(output_dir, showWarnings = T)

## Save df into a csv
write.csv(df, paste(name_raw, ".csv", sep=''), row.names=FALSE)

## Save a plot into a pdf
pdf(file=paste(name_raw, ".pdf", sep=''), onefile = TRUE)
## Run your ggplot here
dev.off()

rm(output_dir, proj_name, name_raw)

## Save environment
save.image(gsub(" ","",paste("output/environment_mem_",gsub("-","",Sys.Date()),".RData")))
```

## Snippets

First go to *Edit* > *Preferences*, on the left of the newly displayed window click on *Code* then on the bottom of the page click on *Edit Snippets...*. Copy and paste the following code in line 1 of the current window. Make sure to have a line break at the end of the code.

Once pasted, click on *Save* > *Apply* > *OK*. Now type `head` and you should see an autocompletion suggestion of `header` which is a snippet, press *Enter* and here it is!

```
snippet header
	## __________________________
	## Title:
	## Author: NAME SURNAME, INSTITUTION
	## Email: 
	## Date Created: `r Sys.Date()`
	## __________________________
	## Code Outline:
	## 1. ...
	## 2. ...
	## __________________________
	## Notes:
	##  
	## __________________________
	
	## Top ----
	## clear workspace
	rm(list=ls())

	## Seed for random number generation
	set.seed(42)
	
	## Load packages
	# install.packages("pacman")
	library(pacman)
	pacman::p_load(
	# insert packages' name here
 		"rstudioapi",
		"dplyr"
	)
	
	## Set working directory to current folder
	setwd(dirname(rstudioapi::getSourceEditorContext()$path))
	
	## Load environment or read .csv files
	load("mydata.RData")
	df <- read.csv("")
	
	## 1. ... ----

	### 1.1 ... ----

	#### 1.1.1 ... ----

	## 2. ... ----

	## Save ----
	output_dir = "./output"
	proj_name = "projname"
	name_raw = paste(output_dir, '/', proj_name, '_', gsub('-','',Sys.Date()), sep='')
	
	dir.create(output_dir, showWarnings = T)
	
	# Save df into a csv
	write.csv(df, paste(name_raw, ".csv", sep=''), row.names=FALSE)

	# Save a plot into a pdf
	pdf(file=paste(name_raw, ".pdf", sep=''), onefile = TRUE)
	# run your ggplot here
	dev.off()
	
	rm(output_dir, proj_name, name_raw)

	# Save environment
	save.image(gsub(" ","",paste("output_dir/environment_mem_",gsub("-","",Sys.Date()),".RData")))

```
