---
layout: ../../layouts/post.astro
title: How to establish a comprehensive testing strategy as a tester in your company?
description: When we test, we should think more than the usual bug reporting.
dateFormatted: October 31, 2024
---

Oftentimes when we talk about testing, its mostly in terms of test techniques, black box testing, white box testing, api testing, manual testing, test automation etc etc. That's all important to talk about but in my opinion, we also need to look at the BIGGER picture. 

### The bigger picture
Your team/organisation as a whole, how to they view importance of quality in the daily work and processes? 
- How detail oriented is the business owner's input?
- How thorough is the UX team in their research? 
- How strictly does the project manager/scrum master drive the process? 
- How religiously do the devs stick to the use cases?
- How does the team coordinate to resolve dependency issues?
- How does the team reconcile after any production issues?

### Is it really a tester's job/concern?
Ok, I admit it. Some people might not agree with some of the question above and will say that's QA not tester. But you see currently, I'm a QA Software Tester 😁, so in my experience, it really does matter to us lot.

### It is our job but how?
Well those questions in the 2nd heading and more like those target every part of your team and thus, those aspects come together to dictate the product's quality. 

Let me tell you what I did, I made sure I discussed with the UX guy (who also wrote the use cases) to be very thorough in his documentation so much so that, for example, he should mention what happens when the user types the valid password (having previously entered an invalid one). In this case the input field's red error state should change to a green one.

I also coordinated with the devs, well mainly I told them the statistics about how many bugs in a given user story could have been avoided by just rechecking the use case documentation again. The devops crowd will tell you at this point that this can be avoided by TDD and more specifically a TDD with UI automation. But honestly speaking, its a bit difficult to achieve that. We know that requirements change often times mid sprint due to time and complexity constraints, so in times like this, we need to go context driven and think on whatever there's left that we can improve individually.

There's more detail on this topic and a rather very in-depth perspective offered by [Daniel Knot](https://www.linkedin.com/in/daniel-knott/) in his Youtube video series: 
#### Software Testing Community Questions
<iframe width="560" height="315" src="https://www.youtube.com/embed/p0wRtDKhqlU?si=PddrZ0IELXalZGvJ&amp;controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>