---
layout: post
title: How to collaborate in Unity using GitHub?
date: 2024-05-17 13:00:00
description: A tutorial to work asynchronously on a Unity project.
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

Let me be clear.

> You **cannot** work synchronously on one same interface in Unity.

I have worked on several Unity projects and the general workflow we adopted with my team is to separately work on each of a feature, and once it is done, implement it in our "final scene".

Legend:

- (All/One/Others), means that the bullet point should be done by 'All' team members, 'One' team member, the 'Others' from your team.
- `git commit -m "<something-here>"` means that you can replace `<something-here>` to whatever you want, like `git commit -m "I write what I want"`.

Here are the steps to cooperate on the same Unity project:

## Setup the cooperation

1. (All) [Download and install the same Long Term Support release of Unity](https://unity.com/releases/editor/qa/lts-releases)

2. (One) Open Unity, click on "New Project", choose your location, do not connect to Unity Cloud and click on "Create Project".

7. (One) In Unity, go in `Assets/Scenes` and copy-paste the `SampleScene` and rename it `MainScene`. Conflicts may rise due to working in the same Scene. This is why each and every team member will work on a copy of this `MainScene`. The trick is to work separately on your own copied scene and implement in `MainScene` what you have done once you feel you have something finished to be implemented.

2. (All) If not done yet, [create a GitHub account](https://github.com/signup?user_email=&source=form-home-signup)

3. (One) [Create a repository on GitHub](https://github.com/new) : no template, enter your repository name and description, keep it public, tick 'Add a README.md', add a .gitignore and choose 'Unity', if you don't know what license to use, choose GNU v3.0 or CC0 v1.0.

4. (One) On GitHub, click on "Code" the big green button, choose "SSH", click on the copy icon.

5. (One) On your computer, open a terminal, navigate to the directory where you have your freshly new Unity project and type the following commands:
- `git init` to initialize git in your directory
- `git checkout -b <my-branch-name>` to create creating a branch name `<my-branch-name>` (you can choose another one)
- `git remote add origin <paste-the-ssh-here>` to link your local git to the remote one
- `git pull origin main` to download the .gitignore, README.md and LICENCE files.
- `git add .` to add to staging the Unity project you've created
- `git commit -m "chore(setup): adding project"` to commit the files and making them ready to be pushed
- `git push --set-upstream origin <my-branch-name>`

6. (One) Once you've done this, when going to the project's main page in github, you would see a yellow rectangle asking for "Compare & pull request", click on this button. Normally it should be "Able to merge", click on "Create a pull request" > "Merge pull request" > "Confirm merge" > "Delete branch"

7. (One) Go now on "Settings" > "Collaborators", and "Add people" who you want them to be part of the project.

8. (Others) Accept the invitation to collaborate on GitHub and copy the SSH link, go to a terminal and get to the directory you want to create a clone of the repository. Execute these commands :
- `git clone <paste-the-ssh-here>`, now you should be able to see the exact same repository than your colleague and GitHub.
- `git checkout -b <my-awesome-branch-name>`, to create another branch and not work on `main`.
- `git status`, to see on what branch you are + see the files you have modified, you should be in my-awesome-branch-name

9. (All) Be sure to make a copy of `MainScene` and you can begin to create in your scene.

## Merge Request

Now that you have finished a feature and/or implemented it on the `MainScene`, be sure to be on your branch, execute `git status` to be able to see where you are.

Once in your branch and you saw the files you have modified, run the following commands in your terminal :
- `git add .` 
- `git commit -m "<your-message-here>"` 
- `git push --set-upstream origin <your-awesome-branch-name>`

Like the point 6. above : Go to the project's main page in github, you would see a yellow rectangle asking for "Compare & pull request", click on this button. Normally it should be "Able to merge", click on "Create a pull request" > "Merge pull request" > "Confirm merge" > "Delete branch"

Go back to your terminal, run :
- `git checkout -b <another-branch>`
- `git pull origin main`

And you are ready to go for another round!