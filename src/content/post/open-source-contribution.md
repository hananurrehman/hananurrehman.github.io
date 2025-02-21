---
layout: ../../layouts/post.astro
title: How to contribute to open source projects as a tester?
description: How can software testers contribute in open source projects?
dateFormatted: February 15, 2025
pubDate: 15 February 2025 10:00:00 GMT
---

Contributing to open source projects is a great way for a software engineer to hone their skills. You not only get to learn new stuff, you get to connect with new people too.

For dedicated software developers, it may be easier to find a project that suits their tech stack but for testers it can be a bit challenging. I think it may be because of a limited tech stack? I can automate testing in Playwright and there may be someone who can do it with selenium, but writing unit tests of a Ruby on Rails project? Submitting bug fix PRs for TL draw? That's where we need to know what other ways can get in on this.

#### Open source contribution possibilities
There's loads of them, you can:
* update their readme.md files ([I've done that](https://github.com/hananurrehman/open-production-web-projects))
* update their setup guides
* suggest updates to their documentation or requirements
* add example use cases to their documentation etc
* verify bug fixes for them so issues can be closed out
* report bugs
* fix bugs
* write test automation scripts for them

The basic step here? Setup the project on your machine by forking that repo. 

In my experience when I tried to set up [Inventree](https://github.com/inventree/InvenTree), I found out that the procedure did not work well with a Mac. Since the repo was being actively maintained, I just raised an issue with the owner and all was sorted. 

I also did the same with [Pimify](https://github.com/hananurrehman/pimify), here I found the superuser creation to be a bit of an extra process so I discussed it with the owner and he was able to make improvements based on my feedback.

If we talk about the step after setup, you can take my own blog as an example. While setting up the theme I discovered the posts were being sorted in alphabetical order of the file names they were in rather than based on time, I then found a fix for it and made a PR. [It's live](https://github.com/ccbikai/astro-aria/pull/4)!

As a first step, I will suggest you explore the [First Contributions Project](https://github.com/hananurrehman/first-contributions). This is a great way for beginners to experience open source contributions.
As for the list mentioned above, feel free to search or even drop a post in a sub Reddit. People generally ask for contributions there. The other easier bet would be newer projects on Github!

Now remember the last point in that list? *write test automation scripts for them*.
Been there done that! It's [Pimify](https://github.com/hananurrehman/pimify) again. If you go to the *e2e* folder you will find my Playwright tests in there. 
It's still work in progress though, but as I said before, since this was a relatively younger project it was easier to work with it. Not only will this help as a contribution but will also double as a portfolio showcase for me! 

Rahul Parwal talks about this topic in detail in his video. Do check it out!

<iframe width="560" height="315" src="https://www.youtube.com/embed/5KRaRYy_3c8?si=6BWouCH34d56M_XO&amp;start=306" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

