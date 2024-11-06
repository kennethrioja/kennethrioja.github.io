---
layout: post
title: How to connect to your EC2 instance
date: 2024-10-21 13:00:00
description: Talking about Amazon Web Services here!
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

1.	On your AWS dashboard, click on “EC2”
2.	Click on “Key pairs”
3.	On the top right click on “Create key pair” -> a key pair will allow you to connect in ssh to AWS, you are creating your identity FOR AWS (not yet the instance)
4.	Enter a key pair name (e.g., kennethunige) + leave RSA and .pem ticked and “Create key pair”
5.	It will ask you to download your key pair, keep it in a folder you know you can find it back easily
6.	Open a terminal, locate your recently downloaded .pem file (on Mac you can left click, hold ‘option’ and ‘Copy “myFile.pem” as pathname”) and run `chmod 400 /path/to/your/myFile.pem` -> this .pem file (= your identity to AWS) should be only read by you and not open to the ‘others’ nor ‘world’ group, this is a requirement when using ‘ssh’
7.	Run `ssh-keygen -y -f /path/to/your/myFile.pem` and copy the output beginning by ‘ssh-rsa Bl4bLaAA…’-> this is the public key to be able to identify you IN THE INSTANCE
8.	Give this output to someone that has access to the AWS instance
9.	For the person having already access to the AWS instance:
    - Connect to the instance
    - Run 
        - `sudo adduser newuser` (newuser being your name)
        - `sudo su - newuser` (you should now be connected as ‘newuser’, see [newuser ~]$)
        - `mkdir .ssh`
        - `chmod 700 .ssh`
        - `touch .ssh/authorized_keys`
        - `chmod 600 .ssh/authorized_keys`
        - `nano .ssh/authorized_keys` and paste the public key given by newuser
        - Exit the instance
10.	Come back to your EC2 dashoard > Instances > click on the running instance
11.	Copy the Public IPv4 DNS (top right of your screen)
    - Now it should be all good, you have your private key in your computer (your .pem file), the public key of this .pem file has been put in ‘authorized_keys’ on the instance with your username, you have your username and the address to where you want to connect (IPv4 DNS)
12.	CHANGE ALL THE RELEVANT FIELDS: Run `ssh -i /path/to/your/myFile.pem username@pasteHerePublicUPv4DNS`. For example for me it is : `ssh -i /path/to/my/Key.pem kenneth@<IPv4 DNS>`
13.	Welcome to the EC2 instance!

# Connect with VSCode

Courtesy of : https://medium.com/@christyjacob4/using-vscode-remotely-on-an-ec2-instance-7822c4032cff

# Allow yourself to change files in var/www/html using VSC (CAUTION!!!)

> Un grand pouvoir implique de grandes responsabilités – Uncle Ben

1.	Connect with ec2-user and allow your username to be root : https://superuser.com/a/1212962 

2.	Once you can save a file in var/www/html as sudo, if you are using vsc download : https://marketplace.visualstudio.com/items?itemName=yy0931.save-as-root 