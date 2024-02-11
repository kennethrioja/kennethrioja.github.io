---
layout: post
title: How to convert cm to px in a screen?
date: 2024-02-04 12:00:00
description: What you see is not what reality is
tags: research code psychology # work university hobby research edtech code ux ui data psychology videogames misc book
# toc:
#   beginning: true
#   sidebar: left
# categories: sample-posts
# related_posts: false
# related_publications: einstein1950meaning, einstein1905movement
# thumbnail: assets/img/blog_book_TDC.jpeg # 300x400
# featured: true
---

Never report `px` in a research paper when you want to communicate about a stimulus size on screen, it is not a sign of reproducibility because the pixel size of my screen is not necessarily the same pixel size than yours. 

> [All three of these](http://i.stack.imgur.com/cDCvQ.jpg) have 1920x1080 px screens. – [gronostaj](https://superuser.com/users/194694/gronostaj) in [this forum](https://superuser.com/questions/1103934/does-1-pixel-have-a-standard-size)

The variables / constants you must have are :

- `distanceFromScreen` usually 50 cm ([Yung et al., 2015](https://www.jove.com/t/52470/methods-to-test-visual-attention-online))
- `pxPerDeg` (to compute it, you can use [this calculator](https://res18h39.netlify.app/calculator))
- `expectedStimulusSizeWidth`

Here is the JS code to compute the expected size (in cm) of a stimuli : 

```
const   stimWidthRad = 2 * Math.atan((expectedStimulusSizeWidth / 2) / distanceFromScreen); // stimulus width in radian
const   stimWidthDeg = stimWidthRad * 180 / Math.PI; // stimulus width in degrees
const   stimWidthPx = stimWidthDeg * pxPerDeg; // stim width in px from real monitor size in cm.
```