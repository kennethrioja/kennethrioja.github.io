---
layout: post
title: Using mutate with multiple conditions including grepl in R
date: 2024-03-14 13:00:00
description: Damn it Regex
tags: R data code # work university hobby research edtech code ux ui data psychology videogames misc book
# toc:
#   beginning: true
#   sidebar: left
# categories: sample-posts
# related_posts: false
# related_publications: einstein1950meaning, einstein1905movement
# thumbnail: assets/img/blog_screenandearlychildhood.jpeg # 300x400
# featured: true
---

In my case, I had one `id` containing two games/sessions, as shown by different dates in my column `timeStamp` which is of `char` data type in the raw data.

The example below shows how I differenciated the two IDs. Let's say the second player played the game on March 14, 2024 and I want to change it's `id` to `"2"`.

```
df <- raw %>%
  dplyr::mutate(id = ifelse((grepl("^20240314.*$", timeStamp, ignore.case = TRUE) # if timeStamp begins by "20240314"
                              & id == "1"), # and id is "1"
                              "2", # change id to "2"
                              id)) # else keep it as is
```

---

Regex tips:

`^` marks the begining of the string, `.*` marks anything (like the `*` in C), `$` marks the end of the string
