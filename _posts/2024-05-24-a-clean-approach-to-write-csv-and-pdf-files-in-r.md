---
layout: post
title: A clean approach to write csv and pdf files in R
date: 2024-05-28 13:00:00
description: 
tags: work data code # work university hobby research edtech code ux ui data psychology videogames misc book
# toc:
#   beginning: true
#   sidebar: left
# categories: sample-posts
# related_posts: false
# related_publications: einstein1950meaning, einstein1905movement
# thumbnail: assets/img/blog_screenandearlychildhood.jpeg # 300x400
# featured: true
# redirect: https://edu.ge.ch/site/tablettepedagogique/2024/03/28/2656/
---

This example provides you with a way to create an `output` directory at the root of your R project and writes a csv and a pdf with the current date at the end of its name.

```
## Clear workspace
rm(list=ls())

## Seed for random number generation
set.seed(42)

## Set working directory to current path 
setwd(dirname(rstudioapi::getSourceEditorContext()$path))
# getwd()

## Reproducible example
df <- mtcars
output_dir = "./output"
proj_name = "projname"
name_raw = paste(output_dir, '/', proj_name, '_', gsub('-','',Sys.Date()), sep='')

## Create directory
dir.create(output_dir, showWarnings = T)

## Create csv
write.csv(df, paste(name_raw, ".csv", sep=''))

## Create pdf
pdf(file=paste(name_raw, ".pdf", sep=''), onefile = TRUE)
plot(df$cyl, df$mpg)
dev.off()

rm(output_dir, proj_name, name_raw)
```
