---
layout: post
title: A guide to the Performance tab in Chrome/Brave Webtools
date: 2024-11-01 13:00:00
description: 
tags: code ui data # work university hobby research edtech code ux ui data psychology videogames misc book
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

Working in a cognitive neuroscience lab involves doing research with real people, and when researchers are studying vision they need computerized tasks with accurate frame-by-frame displays.

The UFOV ([Yung et al., 2015](https://pmc.ncbi.nlm.nih.gov/articles/PMC4354665/)) is one of the [tasks used at the lab](https://www.brainandlearning.org/tasks) to measure visuo-spatial attention. The task displays a stimulus during an *n* number of frame (e.g., for a screen at the refresh rate of 60Hz, displaying 60 frames per second, meaning 1/60 = 16.667ms). However, it appeared that when testing the task with a photodiode, the stimulus was always shown with one supplementary frame.

After debugging the draw loop of the task, how to test the task 'frame-by-frame' or at least in a precise manner?

I first watch this [first guide to web performance](https://www.youtube.com/watch?v=0fONene3OIA) where I got introduced with:

- LCP, Largest Contentful Paint which is the Loading Time of the page which must be under 2.5sec. The video says that a bad LCP == a bad SEO and there are three methods to reduce this LCP time, first reduce assets size, second use a CDN, third avoid setTimeout(), fourth preload content.
- FID, First Input Delay is Interactivity which must be under 100ms.
- CLS, Cummulative Layout Shift which is Visual Stability and must be under 0.1. To enhance the user experience use img width & height and srcset.

Enough *blabla*. 

I downloaded the Web Vitals Extension to check for FID, but what was the most important for me was how to check for LCP. And in a more extreme manner, I needed to get a display time of 16.667ms on a 60Hz monitor. How did I do it? Check [my guide to the performance tab](https://www.youtube.com/watch?v=hjmdDsvkwyc)!