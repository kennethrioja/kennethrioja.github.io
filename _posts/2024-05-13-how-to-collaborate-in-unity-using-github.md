---
layout: post
title: (WORKINPROGRESS) How to collaborate in Unity using GitHub
date: 2024-05-17 13:00:00
description: 
tags: videogames code hobby # work university hobby research edtech code ux ui data psychology videogames misc book
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

(WORKINPROGRESS...)

1. (All) [Download and install the same Long Term Support release of Unity](https://unity.com/releases/editor/qa/lts-releases)

2. (One) Open Unity, click on "New Project", choose your location, do not connect to Unity Cloud and click on "Create Project".

7. (One) In Unity, go in `Assets/Scenes` and copy-paste the `SampleScene` and rename it "Global". Conflicts may rise due to working in the same Scene. This is why each and every team member will work on a copy of this "Global" Scene. The trick is to work separately on your own copied scene and implement in "Global" what you have done once you feel you have something finished to be implemented.

2. (All) If not done yet, [create a GitHub account](https://github.com/signup?user_email=&source=form-home-signup)

3. (One) [Create a repository on GitHub](https://github.com/new) : no template, enter your repository name and description, keep it public, tick 'Add a README.md', add a .gitignore and choose 'Unity', if you don't know what license to use, choose GNU v3.0 or CC0 v1.0.

4. (One) On GitHub, click on "Code" the big green button, choose "SSH", click on the copy icon.

5. (One) On your computer, open a terminal, navigate to the directory of your choice and type `git clone` + a space + paste what you copied + enter. Run `cd <NAMEOFYOURREPO>`. Do not close your terminal.

6. (One) Now that your GitHub repository has been copied, 

8. (One) Here are the git commands you must know:
- `git status` : shows on which branch you are and what files you have modified/created. 
- `git add <FILE_N>` : it *adds* to the stag


the first line displays on which branch you are, you must be in main right now. It should display also in red <THENAMEOFYOURPROJECT>