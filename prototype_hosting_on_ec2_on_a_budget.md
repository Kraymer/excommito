---
title: Hosting proof-of-concept projects on EC2 on a budget
description: Keep your EC2 and RDS instance stopped when you don't interact with them.
dropcaps: true
published: true
draft: true
tags:
- aws
- unix
---
My AWS 12 months free tier come to its end and I have a 30$ bill 
to pay for what is to this day a single user website that is used a couple dozen 
hours a month (most of the time I spend on the website is on my local machine).

The django website is hosted on a t2.micro EC2 instance, database is on a t2.micro RDS one.
t2.micro is the cheapest type available : 10$ go to EC2, twice the amount to RDS.
AWS Lightsail offers small hosting capabilities for cheaper but I want to stay on EC2 as it's 
the environment I'm targeting when the website will be in production with more users.

I figured that if I can stop the two instances when I don't need them my problem is mostly gone.
Starting/stopping instances manually on the AWS interface would work but requires too much discipline,
 I need to automate those steps.

# Configure uptime time slots with cron on EC2 instance

~~~
0 0 * * * aws rds stop-db-instance --db-instance-identifier hypertoire ; sudo shutdown
~~~

# Early shutdown from the PoC website




# RDS: synced with EC2 uptimes

# 

The default state of our system is having the two instances down.
We will use a ssh connection as a trigger to wake up the beast 
