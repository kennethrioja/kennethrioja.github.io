---
layout: post
title: My internship as a backend dev
date: 2024-07-12 13:00:00
description: Creating a RESTful API for a video game
tags: videogames code data # work university hobby research edtech code ux ui data psychology videogames misc book
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

Validating an internship is mandatory within the [MALTT](https://www.unige.ch/fapse/brainlearning/). I wanted to do something related to video games while learning something new. [Eric Sanchez](https://www.linkedin.com/in/sanchezeric/) gave me the opportunity to work on a project in his lab, the LIP ([Laboratoire d'Innovation Pédagogique](https://www.lip-unige.ch/)), involving a pedagocical video game headed by [Mariem Jaouadi](https://www.linkedin.com/in/mariem-jaouadi-26489053/). They gave me the choice between a research-oriented or a dev-oriented intership. I jumped into the second option because I wanted to use my recently acquired skills from [42 Lausanne](https://42lausanne.ch/). 

Find the report of my internship [here](https://tecfaetu.unige.ch/etu-maltt/baldur/rioja0/internship/report_rioja_2024.pdf) (in french).

During my 16 weeks of internship, I spend the first days understanding the context and got the theoretical background of what a RESTful API is and how it can send data to an SQL database.

I hesitated to begin coding with Java Spring, but since I got no former experience with Python, I decided to go with the latter.

Then I followed courses on how to learn Python which was quickly done thanks to my background in coding in C and C++. I followed [PEP8](https://peps.python.org/pep-0008/) style guide to have an clean code.

When it came to design the RESTful API, I needed to choose between Django and Flask, the first one being a 'batteries included' framework versus the micro-framework Flask. I chose to go along with Flask as the lab did not need the whole Front-End that Django is offering, a simple Back-End app with Flask was doing the job. I then followed parts from the [Flask Mega Tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world) while enhancing the entire architecture using blueprints, decorators, error handling, a route to export logs in a csv file, an ACL and token auth (JWT).

Finally, with the help of the system engineer [Stéphane](https://www.linkedin.com/in/stephane-morand/), he gave me the rights to locate my app in the server. I then deployed and did the necessary tests to say I successfully deployed the RESTful API in the lab's server! Yaay!

Find the [GitHub repo of the RESTful API](https://github.com/kennethrioja/flask-restfulapi/) with its documentation and a [video in french](https://www.youtube.com/watch?v=yZxAamS0hrY) on how it looks like. 