---
layout: post
title: How to get the contributors list of a GitHub repo
date: 2025-07-23 13:00:00
description: Using a bash command line
tags: code # work university hobby research edtech code ux ui data psychology videogames misc book
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

The output will be a coma separated list

```bash
curl https://api.github.com/repos/ORGANIZATION/REPOSITORY/contributors | grep login | awk '{print $2}' | sed -e "s/\"//g" -e "s/\,//g" | paste -sd"," - | sed "s/,/, /g"
```

PS: I needed it to *manually* update metadata to get ingested in <https://everse-training.app.cern.ch/>