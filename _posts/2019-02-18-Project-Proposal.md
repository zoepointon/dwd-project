---
layout: post
title: Project Proposal
---

*At the end of week 5, we had to submit a project proposal. This is that document in blog form.*

## Triangle 
![Triangle](/dwd-project/img/triangle.png)

## Summary of our work so far
We started by discussing different themes to address and settled on moving to digital tickets and how that would affect the souvenir function of tickets. We decided to create a sort of data souvenir for festival visitors to take home. We then brainstormed some ideas for possible souvenirs - what data to use and how to obtain it, and what souvenir to create.

## Context and Design Brief
Physical tickets often have sentimental value and are kept as souvenirs. For digital tickets, this is not possible, yet they have many advantages over paper tickets. During the festivals, visitors will see many different shows, data about which can be used to create a souvenir that summarises the experience overall and contains references to all events the person visited. In our project, we are going to design the data souvenir itself (its physical shape and possibly digital extensions, e.g. AR), as well as a vending machine to create it (obtaining visitors’ data on which shows they visited, obtaining additional data about the events, creating the artefact from the data, printing the postcard). Data that could be used includes:
* Weather data
* Location data (of events)
* Genre of events
* Time 
* Rating or ranking provided by visitor

At the exhibition, we would like to present the vending machine (without a working payment mechanism) where people can provide the data on which events they visited at the 2018 festivals, and receive the souvenir based on that data. This would simulate the experience during the festival.

## Plan
### Timetable
![Timetable](/dwd-project/img/timetable.png)

### Resources
* Wood, paint etc. to build vending machine exterior
* Card to print postcards on
* Small-ish printer to integrate in the vending machine
* Touchscreen/computer for data input and to operate the machine - this could either be a dedicated screen and computer (e.g. Raspberry Pi) or we build the machine so that a laptop/iPad can be inserted - depends on how far our budget reaches

### Roles and Responsibilities
* Rotating responsibility for blog posts weekly
* Technical:
  * Zoe: user data input (website)
  * Sarah + Shuai: Festivals API, combining data
  * Hanwen + Xin: AR/3D modelling
  * Shuai: Graphic Design

## Sketch and Storyboard
![Cardboard mockup of vending machine](/dwd-project/img/cardboard-machine.jpg)

1. Festival visitor approaches machine, presses START on Welcome Screen
2. Visitor inputs data about which events they visited
3. Machine generates 3D visualisation of their festival experience
4. Machine prints image on postcard and releases it at the bottom
5. Optional: Visitor scans postcard/QR code or follows link and views their personal visualisation in 3D on their phone or computer

## Potential difficulties
* Different components are not going to fit together seamlessly without additional effort, so we will need to dedicate additional time to making sure this works.
* The shape of our souvenir will probably continue evolving as we progress and we need to make sure to be prepared for this.
* We cannot simulate perfectly what it would be like during the festivals, e.g. we do not have access to ticketing apps at the moment. This is not something we can do anything about, we need to use alternative ways of obtaining data that do not depend on 3rd party software.

## Key references
* Data Things (Bettina Nissen) http://data-things.com/ 
* Red Bull at Night x BYBORRE  Live data visualization of clubbers https://www.behance.net/gallery/54208743/Live-data-visualization-of-clubbers
* Netease Koala x Hotsar Smile Cash Machine https://www.zcool.com.cn/work/ZMzI2MjE1MTY=/1.html
